/* RCS MCU CODE V2
    Chris Fedors
    Added acclerometer magnitude
    Edited header file to compensate for gravity in x direction instead of y direction.
    Changed debounce to 100 ms and 3.5G
    Fixed timing issue





*/
#include <Wire.h>
#include <Servo.h>
#include "MPU9250.h"
#include "quaternionFilters.h"
#include "SparkFunMPL3115A2.h"
#include "EEPROM_24LC256.h"

//Setup for IMU and EEPROM
#define AHRS true //Altitude Heading and Reference System, used to get roll, pitch, yaw, etc.
#define FLIGHT_STATE 0x54 //I2C address of flight state chip
#define FLIGHT_STORAGE 0x50 //I2C address of flight storage chip
#define MAX_MEMORY 32760 //Max memory address for EEPROM

//Some constants for flight calculations
#define DEG_TO_RAD 0.017453//Conversion factor for degree to radian conversion
#define LAUNCH_THRESHOLD 3.5 //Accleration in Gs that indicates a launch
#define ALT_W  0.20 //Weight values for the exponetial filter
#define VEL_W  0.40

#define LOOP_DELAY 20 //Delay between velocity readings in ms

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
float accelMag = 0;
float prevAlts[100] = { 0.0 };
float currentAlt = 0;
float prevAlt = 0;
float initalAlt = 0;
float velocity = 0;
float avgVelocity = 0;

float initialRate = 0.0;
float desiredRate = 360.0;
float prevVelocity = 0.0;
float prevVelocities[20] = {0.0};
boolean controlInit = true;


void append(float *arr, float element, int len){
  //Serial.println(len);
  for(int i = len-1; i > 0; i--){
    arr[i] = arr[i-1];
    //Serial.println(String(i) + ", " + String(arr[i]));
  }
  arr[0] = element;
  //Serial.println("0, " + String(arr[0]));
  return arr;
}
float avg(float *arr, int len){
  float sum = 0;
  for(int i = 0; i < len; i++){
    sum += arr[i];
    //Serial.println(sum);
  }
  return sum/float(len) ;
}

float expAvg(float currVal, float prevVal, float weight){
  return currVal*weight + (1-weight)*prevVal;
}

///////////////////////////////////////////////////////
//Helper functions for reading/writing to EEPROM chips
//////////////////////////////////////////////////////
String logData(String dataString) {
  /* INPUT: NONE
     OUTPUT: NONE
     Logs flight data to EEPROM
  */
  //String dataString = (String)currTime + ": " + (String)myIMU.ax + ", " + (String)myIMU.gz + ", " + (String)currentAlt + " \n";
  if (memAddress < MAX_MEMORY) {
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
    //myIMU.getAres(); //Update resolutions
    //myIMU.getGres();
    // Now we'll calculate the accleration value into actual g's
    // This depends on scale being set
    myIMU.ax = (float)myIMU.accelCount[0] * myIMU.aRes - myIMU.accelBias[0];
    myIMU.ay = (float)myIMU.accelCount[1] * myIMU.aRes - myIMU.accelBias[1];
    myIMU.az = (float)myIMU.accelCount[2] * myIMU.aRes - myIMU.accelBias[2];

    myIMU.readGyroData(myIMU.gyroCount);  // Read the x/y/z adc values
    // Calculate the gyro value into actual degrees per second
    // This depends on scale being set
    myIMU.gx = (float)myIMU.gyroCount[0] * myIMU.gRes;
    myIMU.gy = (float)myIMU.gyroCount[1] * myIMU.gRes;
    myIMU.gz = (float)myIMU.gyroCount[2] * myIMU.gRes;
    accelMag = sqrt((myIMU.ax * myIMU.ax) + (myIMU.ay * myIMU.ay) +  (myIMU.az * myIMU.az));
  }
  MahonyQuaternionUpdate(myIMU.ax, myIMU.ay, myIMU.az, myIMU.gx * DEG_TO_RAD,
                         myIMU.gy * DEG_TO_RAD, myIMU.gz * DEG_TO_RAD, myIMU.my,
                         myIMU.mx, myIMU.mz, myIMU.deltat);
}

float getAltitude() {
  /* INPUT: NONE
     OUTPUT: Altitude in feet
     Can do filtering here if needed
  */
  prevAlt = currentAlt;
  currentAlt = myPressure.readAltitudeFt();
  //append(prevAlts, currentAlt , 100);
  //currentAlt = avg(prevAlts, 100);
  currentAlt = expAvg(currentAlt, prevAlt, ALT_W);
  return currentAlt;
}

float getVelocity() {
  /* INPUT: NONE
     OUTPUT: Velocity in feet per second
  */
  prevVelocity = velocity;
  velocity = (currentAlt - prevAlt) * 1000/LOOP_DELAY;//Multiply by 10 since readings are every 10th of a second
  velocity = expAvg(velocity, prevVelocity,VEL_W);
  //append(prevVelocities, velocity , 20);
  //avgVelocity = avg(prevVelocities, 20);
  return velocity;
}

float findDeflection(float rotationRate, float desiredRR) {
  /* INPUT: Rate of rotation of launch vehicle, desired rate of rotation
     OUTPUT: Rotational accleration in (???)
  */
  float alpha = (desiredRR - rotationRate) * P * DEG_TO_RAD; //Find control error term and multiply by proportional const. Units: rad/s^2
  //Serial.println("A: " + (String)alpha);
  float liftCoeff = alpha * I / (S * L * Rho); //Start calculation of lift coefficent
  liftCoeff = liftCoeff / (velocity * velocity);
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
  angle = constrain(angle, 60, 120); //Saturate angle between min and max deflections
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
  float deflection = findDeflection(myIMU.gy, desiredRate);
  deflectFlaps(deflection);
  return constrain(deflection, -15.0, 15.0);
}

void intializeSensors() {
  /* INPUT: NONE
     OUTPUT: NONE
     Initalizes and calibrates the altimeter and IMU
  */
  //Intialize MPU 9250
  myIMU.MPU9250SelfTest(myIMU.selfTest);
  myIMU.calibrateMPU9250(myIMU.gyroBias, myIMU.accelBias);
  myIMU.initMPU9250();
  myIMU.getAres(); //Get acclerometer resolution
  myIMU.getGres(); //Get gyroscope resolution
  //Setup Altimeter
  myPressure.begin();
  myPressure.setModeAltimeter();
  myPressure.setOversampleRate(7); // Set Oversample to the recommended 128
  myPressure.enableEventFlags();

}

boolean detectLaunch() {
  /* INPUT: NONE
     OUTPUT: true if launch is detected
     Blocks until a launch is detected. Uses some debounceing.
     Must detect uninterrupted 5G accleration for 500 ms before launch is detected.
  */
  int debounce = 0;
  while (!launch) {
    updateIMUData();
    Serial.println(accelMag);
    if (accelMag >= LAUNCH_THRESHOLD) {
      debounce++;
    } else {
      debounce = 0;
    }
    if (debounce >= 10) {
      startTime = millis();
      launch = true;
      //Serial.println(10);
      return true;
    }
    delay(10);
  }
  return true;
}

boolean detectApogee() {
  /* INPUT: NONE
     OUTPUT: true if rocket has passed apogee, false o.w.
     Used to stop movement of flaps after apogee is detected.
  */
  if (velocity < 0) {
    altDebounce++;
  } else {
    altDebounce = 0;
  }
  if (altDebounce > 10) {
    apogee = true;
  }
}

boolean detectBurnout() {
  /* INPUT: NONE
     OUTPUT: true if motor burnout is detected
     Blocks until burnout is detected. Uses some debounceing.
     Must detect uninterrupted < 0G accleration for 500 ms before launch is detected.
  */
  int debounce = 0;
  while (!burnout) {
    updateIMUData();
    Serial.println(accelMag);
    if (accelMag < LAUNCH_THRESHOLD) {
      debounce++;
    } else {
      debounce = 0;
    }
    if (debounce > 10) {
      burnout = true;
      initialRate = myIMU.gy;
      //Serial.println(100);
      return true;
    }
    delay(10);
  }
  return true;
}

void setup() {
  Serial.begin(9600);
  //Setup I/O pins
  pinMode(LED_PIN, OUTPUT);
  pinMode(FEEDBACK_PIN, INPUT);
  motor.attach(MOTOR_PIN);
  //Test motor
  motor.write(60);
  delay(1000);
  motor.write(120);
  delay(1000);
  motor.write(90);

  intializeSensors();
  //Setup sensors
  Wire.begin();
  memAddress = 0;
  digitalWrite(LED_PIN, HIGH);
}
int readings = 0;
int LED = HIGH;
float deflection = 0.0;
void loop() {
  digitalWrite(LED_PIN, LED);
  delay(10);
  //while (!detectLaunch()); //Wait for launch detection
  digitalWrite(LED_PIN, !LED);
  getVelocity();
  getAltitude();
  updateIMUData();
  //Serial.println(currentAlt);
  Serial.println(String(velocity));
  //Serial.println(String(velocity) + ", " + String(currentAlt - 600.0));
  /*
  //Main control loop
  while (detectBurnout() && !apogee) { //Wait for burnout detection
    //Blink LED and get time elapsed since launch was detected
    LED = !LED;
    digitalWrite(LED_PIN, LED);
    currTime = millis() - startTime;
    //Serial.println(currTime);

    //Set initial roll rate and burnout detection time on first iteration
    if (controlInit) {
      burnoutTime = currTime;
      //Adjust desired rate to be in same direction as initial rate
      if (initialRate < 0) {
        desiredRate = -desiredRate;
      } else {
        desiredRate = desiredRate;
      }
      controlInit = false;
    }

    if (currTime - burnoutTime > 7000) { //Revert to initial roll rate 7 seconds after burnout
      desiredRate = initialRate;
    }
    if ((currTime - burnoutTime) > 3000) { //Start control algo 3 seconds after burnout
      deflection = controlAlgo(desiredRate);
    } else {
      getAltitude();
      getVelocity();
      updateIMUData();
    }

    //Log data to EEPROM
    dataString = (String)currTime + ":" + (String)myIMU.gy + ", " + (String)velocity;
    Serial.println(dataString);
    //logData(dataString);
    detectApogee();
    endTime = (millis() - startTime) - currTime;
    //Serial.println(100 - endTime);
    //delay(100 - endTime);
    while(100 - endTime > (millis() - startTime) - currTime){
      getAltitude();
      getVelocity();
      updateIMUData();
    }
  }
  */
}
