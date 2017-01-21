/* RCS MCU CODE V2
    Chris Fedors





*/
#include <Wire.h>
#include <Servo.h>
#include "MPU9250.h"
#include "SparkFunMPL3115A2.h"
#include "EEPROM_24LC256.h"

#define AHRS true //Altitude Heading and Reference System, used to get roll, pitch, yaw, etc.
#define FLIGHT_STATE 0x54 //I2C address of flight state chip
#define FLIGHT_STORAGE 0x50 //I2C address of flight storage chip

#define DEG_TO_RAD 0.017453//Conversion factor for degree to radian conversion
#define LAUNCH_THRESHOLD 6.0 //Accleration in Gs that indicates a launch

//Pins used on the ATmega
#define LED_PIN 3
#define MOTOR_PIN 9
#define FEEDBACK_PIN A3

//Rocket properties, all in imperial units
const float P = 8.5; //Proportianal constant for the control system.
const float I = 1; //Moment of inertia of the rocket about roll axis
const float Rho = 0.002377; //Air density
const float S = 0.375; //
const float L = 0.172; //

unsigned long startTime = 0;
unsigned long endTime = 0;
unsigned long currTime = 0;

unsigned long memAddress = 0;
String dataString;
const int stringSize = 32;//Max memory size of dataString

MPU9250 myIMU;
MPL3115A2 myPressure;
Servo motor;

EEPROM_24LC256 stateEE(4); //Flight state EEPROM address
EEPROM_24LC256 storeEE(0); //Flight storage EEPROM address

//Globals required for control system
float spinRate = 0;
float currentAlt = 0;
float prevAlt = 0;
float velocity = 0;

///////////////////////////////////////////////////////
//Helper functions for reading/writing to EEPROM chips
//////////////////////////////////////////////////////
String logData(String dataString) {
  /* INPUT: NONE
     OUTPUT: NONE
     Logs flight data to EEPROM
  */
  //String dataString = (String)currTime + ": " + (String)myIMU.ax + ", " + (String)myIMU.gz + ", " + (String)currentAlt + " \n";
  byte data[stringSize];
  dataString.getBytes(data, dataString.length());
  storeEE.writeEEPROM(memAddress, data, stringSize); //Find length of String later
  //memAddress += dataString.length();
  return data;
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
boolean detectLaunch() {
  /* INPUT: NONE
     OUTPUT: True if launch is detected, false otherwise
     TODO: Add debouncing
  */
  if (myIMU.az > LAUNCH_THRESHOLD) {
    return true;
  }
}
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
    myIMU.az = (float)myIMU.accelCount[2] * myIMU.aRes; // - myIMU.accelBias[2];

    myIMU.readGyroData(myIMU.gyroCount);  // Read the x/y/z adc values
    // Calculate the gyro value into actual degrees per second
    // This depends on scale being set
    myIMU.gx = (float)myIMU.gyroCount[0] * myIMU.gRes;
    myIMU.gy = (float)myIMU.gyroCount[1] * myIMU.gRes;
    myIMU.gz = (float)myIMU.gyroCount[2] * myIMU.gRes;
  }
}

float getAltitude() {
  /* INPUT: NONE
     OUTPUT: Altitude in feet
     Can do filtering here if needed
  */
  prevAlt = currentAlt;
  currentAlt = myPressure.readAltitudeFt();
  return currentAlt;
}

float getVelocity() {
  /* INPUT: NONE
     OUTPUT: Velocity in feet per second
  */
  velocity = (currentAlt - prevAlt) * 10;
  velocity = 400;
  return velocity;
}

float findDeflection(float rotationRate, float desiredRR) {
  /* INPUT: Rate of rotation of launch vehicle, desired rate of rotation
     OUTPUT: Rotational accleration in (???)
  */
  float alpha = (desiredRR - rotationRate) * P * DEG_TO_RAD; //Find control error term and multiply by proportional const. Units: rad/s^2
  Serial.println(alpha);
  float liftCoeff = alpha * I / (S * L * Rho); //Start calculation of lift coefficent
  liftCoeff = liftCoeff / (velocity * velocity);
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
     The control algorithm. Computes the nessecary fin
  */
  getAltitude();
  getVelocity();
  updateIMUData();
  float deflection = findDeflection(myIMU.gz, desiredRate);
  deflectFlaps(deflection);
  return deflection;
}

void intializeSensors(){
  /* INPUT: NONE
   * OUTPUT: NONE
   * Initalizes and calibrates the altimeter and IMU
   */
  //Intialize MPU 9250
  myIMU.MPU9250SelfTest(myIMU.SelfTest);
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
void setup() {
  Serial.begin(9600);
  //Setup I/O pins
  pinMode(LED_PIN, OUTPUT);
  pinMode(FEEDBACK_PIN, INPUT);
  motor.attach(MOTOR_PIN);
  intializeSensors();
  Wire.begin();
  //Set up IMU
  memAddress = 0;
}

void loop() {
  // put your main code here, to run repeatedly:
  
  //Serial.println(dataString.length()+1);
  delay(30);
  currTime = millis();
  Serial.println(controlAlgo(0.0));
  dataString = (String)currTime + ":" + (String)myIMU.az + "," + (String)myIMU.gz + "," + (String)currentAlt + "\n";
  Serial.println(dataString);
  //Serial.println(millis()- currTime);
  digitalWrite(LED_PIN, HIGH);
  delay(50);
  //Serial.println(readData(memAddress, stringSize));
  //Serial.println(memAddress);
  //memAddress += stringSize;
  digitalWrite(LED_PIN, LOW);

}
