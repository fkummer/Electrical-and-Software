/* RCS MCU CODE V2
    Chris Fedors
    UPDATE MEM SIZE TO 64
    Missing Perenteses on detect launch





*/
#include <Wire.h>
#include <Servo.h>
#include "MPU9250.h"
#include "SparkFunMPL3115A2.h"
#include "EEPROM_24LC256.h"

//Setup for IMU and EEPROM
#define AHRS true //Altitude Heading and Reference System, used to get roll, pitch, yaw, etc.
#define FLIGHT_STATE 0x54 //I2C address of flight state chip
#define FLIGHT_STORAGE 0x50 //I2C address of flight storage chip
#define MAX_MEMORY 32760 //Max memory address for EEPROM

//Some constants for flight calculations
#define DEG_TO_RAD 0.017453//Conversion factor for degree to radian conversion
#define LAUNCH_THRESHOLD 4.5 //Accleration in Gs that indicates a launch

//Pins used on the ATmega
#define LED_PIN 3
#define MOTOR_PIN 9
#define FEEDBACK_PIN A3

//Rocket properties, all in imperial units
const float P = 6; //Proportianal constant for the control system.
const float I = 0.02613; //Moment of inertia of the rocket about roll axis
const float Rho = 0.002377; //Air density
const float S = 0.375; //
const float L = 0.172; //

//Timing variables, all times are in ms
unsigned long startTime = 0; //Time launch is detected
unsigned long endTime = 0; //Time each control loop ends at, relative to currTime
unsigned long currTime = 0; //Current time of each control loop, relative to startTime
unsigned long burnoutTime = 0; //Time burnout is detected, relative to startTime

unsigned long beginTime = 0; //Testing variable


unsigned long memAddress = 0; //Memory address
String dataString;
const int stringSize = 64;//Max memory size of dataString

MPU9250 myIMU;
MPL3115A2 myPressure;
Servo motor;

EEPROM_24LC256 stateEE(4); //Flight state EEPROM address
EEPROM_24LC256 storeEE(0); //Flight storage EEPROM address

//Globals required for control system
boolean launch = false; //true if launch is detected
boolean burnout = false; //true if motor burnout is detected
boolean apogee = false; //true of rocket has reached apogee

int altDebounce = 0; //debounce variable used to detect apogee

float spinRate = 0;
float currentAlt = 0;
float prevAlt = 0;
float velocity = 600;

float initialRate = 0.0;
float desiredRate = 360.0;
boolean controlInit = false;


///////////////////////////////////////////////////////
//Helper functions for reading/writing to EEPROM chips
//////////////////////////////////////////////////////
String logData(String dataString) {
  /* INPUT: NONE
     OUTPUT: NONE
     Logs flight data to EEPROM
  */
  //String dataString = (String)currTime + ": " + (String)myIMU.ax + ", " + (String)myIMU.gz + ", " + (String)currentAlt + " \n";
  if(memAddress < MAX_MEMORY){
    byte data[stringSize];
    dataString.getBytes(data, dataString.length());
    storeEE.writeEEPROM(memAddress, data, stringSize); //Find length of String later
    memAddress += stringSize;
    return data;
  }
}

String readData(unsigned int address, int readLen) {
  /* INPUT: Start address of data to be read, length (in chars) of memory to be read
     OUTPUT: String of data requested
  */
  byte data[readLen];
  storeEE.readEEPROM(address, (byte *) data, readLen);
  return String((char *)data);
}



///////////////////////////////////
//Functions for the control system
///////////////////////////////////
float getDeflection(float liftCoeff) {
  /* INPUT: Desired coefficent of lift
     OUTPUT: Flap deflection for lift coefficent
     Currently does a linear approximation of the CL, has the option of using the lookup table
  */
  return liftCoeff * 256.06;
}

float updateIMUData() {
  /* INPUT: NONE
     OUTPUT: Rate of rotation in (???)
     Updates all data values from the IMU
  */
  if (myIMU.readByte(MPU9250_ADDRESS, INT_STATUS) & 0x01) {
    myIMU.readAccelData(myIMU.accelCount);  // Read the x/y/z adc values
    // Now we'll calculate the accleration value into actual g's
    // This depends on scale being set
    myIMU.ax = (float)myIMU.accelCount[0] * myIMU.aRes; // - myIMU.accelBias[0];
    myIMU.ay = (float)myIMU.accelCount[1] * myIMU.aRes; // - myIMU.accelBias[1];
    //myIMU.az = (float)myIMU.accelCount[2] * myIMU.aRes; // - myIMU.accelBias[2];
    myIMU.az = -1.0;
    if(millis() - beginTime > 7000.0){
      myIMU.az = -1.0;
    }else if(millis() - beginTime > 5000.0){
      myIMU.az = 7.0;
    }

    myIMU.readGyroData(myIMU.gyroCount);  // Read the x/y/z adc values
    // Calculate the gyro value into actual degrees per second
    // This depends on scale being set
    myIMU.gx = (float)myIMU.gyroCount[0] * myIMU.gRes;
    myIMU.gy = (float)myIMU.gyroCount[1] * myIMU.gRes;
    //myIMU.gz = (float)myIMU.gyroCount[2] * myIMU.gRes;
    float t = (millis() - burnoutTime)/1000.0;
    myIMU.gz = t; 
  }
}

float getAltitude() {
  /* INPUT: NONE
     OUTPUT: Altitude in feet
     Can do filtering here if needed
  */
  float t = (millis() - startTime)/1000.0;
  prevAlt = currentAlt;
  currentAlt = -16.0*t*t + 581.0*t;
  return currentAlt;
}

float getVelocity() {
  /* INPUT: NONE
     OUTPUT: Velocity in feet per second
  */
  velocity = (currentAlt - prevAlt) * 10.0;//Multiply by 10 since readings are every 10th of a second
  //velocity = velocity - 3.2;
  return velocity + 0.1;
}

float findDeflection(float rotationRate, float desiredRR) {
  /* INPUT: Rate of rotation of launch vehicle, desired rate of rotation
     OUTPUT: Rotational accleration in (???)
  */
  float alpha = (desiredRR - rotationRate) * P * DEG_TO_RAD; //Find control error term and multiply by proportional const. Units: rad/s^2
  //Serial.println("A: " + (String)alpha);
  float liftCoeff = alpha * I / (S * L * Rho); //Start calculation of lift coefficent
  liftCoeff = liftCoeff / (velocity * velocity);
  //Serial.println("L: " + (String)liftCoeff);
  constrain(liftCoeff, 0.05858, -0.05858);
  return getDeflection(liftCoeff);
}

void deflectFlaps(float deflection) {
  /* INPUT: Flap deflection in degrees
     OUTPUT: NONE
     Converts fin deflection to motor angle, saturates at +-30 degrees from
     center angle of 90.
  */
  int angle = deflection * 2.0 + 90;
  //Serial.println("def: " + (String)angle);
  angle = constrain(angle, 60, 120); //Saturate angle between min and max deflection
  motor.write(angle);
}

float controlAlgo(float desiredRate) {
  /* INPUT: NONE
     OUTPUT: NONE
     The control algorithm. Computes and commands the nessecary fin deflection
  */
  getAltitude();
  getVelocity();
  updateIMUData();
  float deflection = findDeflection(myIMU.gz, desiredRate);
  deflectFlaps(deflection);
  return constrain(deflection, -15.0, 15.0);
}

void intializeSensors(){
  /* INPUT: NONE
   * OUTPUT: NONE
   * Initalizes and calibrates the altimeter and IMU
   */
   //Setup Altimeter
  Serial.println("Initializing Altimeter...");
  myPressure.begin();
  Serial.println("Connection Complete");
  myPressure.setModeAltimeter();
  Serial.println("Mode Set");
  myPressure.setOversampleRate(7); // Set Oversample to the recommended 128
  Serial.println("Sample rate set");
  myPressure.enableEventFlags();
  Serial.println("Flags Set");
  
  Serial.println("Initializing IMU...");
  myIMU.MPU9250SelfTest(myIMU.SelfTest);
  Serial.println("Self Test Complete");
  myIMU.calibrateMPU9250(myIMU.gyroBias, myIMU.accelBias);
  Serial.println("Calibration Complete");
  myIMU.initMPU9250();
  Serial.println("Initialization Complete");
  myIMU.getAres(); //Get acclerometer resolution
  myIMU.getGres(); //Get gyroscope resolution
  
  //Intialize MPU 9250
 
  
}

boolean detectLaunch(){
  /* INPUT: NONE
   * OUTPUT: true if launch is detected
   * Blocks until a launch is detected. Uses some debounceing.
   * Must detect uninterrupted 5G accleration for 500 ms before launch is detected.
   */
  int debounce = 0;
  Serial.println("Detecting Launch");
  while(!launch){
    updateIMUData();
    Serial.println(myIMU.az);
    if(myIMU.az > LAUNCH_THRESHOLD){
      debounce++;
    }else{
      debounce = 0;
    }
    if(debounce > 10){
      Serial.println("Launch Detected!");
      startTime = millis();
      launch = true;
      return true;
    }
    delay(50);
  }
  return true;
}

boolean detectApogee(){
  /* INPUT: NONE
   * OUTPUT: true if rocket has passed apogee, false o.w.
   * Used to stop movement of flaps after apogee is detected.
   */
   if(velocity < 0.0){
    altDebounce++;
   }else{
    altDebounce = 0;
   }
   if(altDebounce > 10){
    apogee = true;
   }
}

boolean detectBurnout(){
  /* INPUT: NONE
   * OUTPUT: true if motor burnout is detected
   * Blocks until burnout is detected. Uses some debounceing.
   * Must detect uninterrupted < 0G accleration for 500 ms before launch is detected.
   */
   int debounce = 0;
   while(!burnout){
    updateIMUData();
    if(myIMU.az < 0.0){
      debounce++;
    }else{
      debounce = 0;
    }
    if(debounce > 10){
      Serial.println("Burnout Detected");
      burnout = true;
      initialRate = myIMU.gz;
      return true;
    }
    delay(50);
  }
  return true;
}

void setup() {
  Serial.begin(9600);
  Wire.begin();
  Serial.println("POWERED");
  //Setup I/O pins
  pinMode(LED_PIN, OUTPUT);
  pinMode(FEEDBACK_PIN, INPUT);
  motor.attach(MOTOR_PIN);
  motor.write(60);
  delay(1000);
  motor.write(120);
  delay(1000);
  motor.write(90);
  //Serial.println("Logging Data");
  //logData(":)");
  intializeSensors();
  //Setup sensors
  memAddress = 0;
  beginTime = millis();
  Serial.println("SETUP COMPLETE");
  digitalWrite(LED_PIN, HIGH);
}


int LED = HIGH;
float deflection = 0.0;
void loop() {
  digitalWrite(LED_PIN, HIGH);
  while(!detectLaunch()); //Wait for launch detection
  digitalWrite(LED_PIN, LOW);
  //Main control loop
  while(detectBurnout() && !apogee){ //Wait for burnout detection
    //Blink LED and get time elapsed since launch was detected
    LED = !LED;
    digitalWrite(LED_PIN, LED);
    currTime = millis() - startTime;
    
    //Set initial roll rate and burnout detection time on first interation
    if(controlInit){
      burnoutTime = currTime;
      //Adjust desired rate to be in same direction as initial rate
      if(initialRate < 0){ 
        desiredRate = -360.0;
      }else{
        desiredRate = 360.0;
      }
      controlInit = false;
    }

    if(currTime - burnoutTime > 7000){ //Revert to initial roll rate 7 seconds after burnout
      desiredRate = initialRate;
    }
    if((currTime - burnoutTime) > 3000){ //Start control algo 3 seconds after burnout
      deflection = controlAlgo(desiredRate);
    }else{
      getAltitude();
      getVelocity();
      updateIMUData();
    }
    
    //Log data to EEPROM
    dataString = (String)currTime + ":" + (String)myIMU.az + "," + (String)myIMU.gz + "," + (String)currentAlt + "," + (String)deflection + "\n";
    Serial.println(dataString);
    logData(dataString);
    detectApogee();
    endTime = millis() - (currTime + startTime);
    //Serial.println(endTime);
    delay(100-endTime);
  }
  if(apogee){
    while(true);
  }
}
