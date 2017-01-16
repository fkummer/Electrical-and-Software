/* RCS MCU CODE V2
 *  Chris Fedors
 *  
 * 
 * 
 * 
 * 
 */
#include <Wire.h>
#include "MPU9250.h" 

#define AHRS true //Altitude Heading and Reference System, used to get roll, pitch, yaw, etc.
#define flightState 0x54 //I2C address of flight state chip
#define flightStorage 0x50 //I2C address of flight storage chip

#define LAUNCH_THRESHOLD 6.0 //Accleration in Gs that indicates a launch

//Rocket properties, all in imperial units
float P = 8.5; //Proportianal constant for the control system.
float I = 1; //Moment of inertia of the rocket about roll axis
float Rho = 1; //Air density
float S = 1; //
float L = ; // 

MPU9250 myIMU;

///////////////////////////////////////////////////////
//Helper functions for reading/writing to EEPROM chips
//////////////////////////////////////////////////////
void writeEEPROM(int deviceaddress, unsigned int eeaddress, byte data ) 
{
  Wire.beginTransmission(deviceaddress);
  Wire.write((int)(eeaddress >> 8));   // MSB
  Wire.write((int)(eeaddress & 0xFF)); // LSB
  Wire.write(data);
  Wire.endTransmission();
  delay(5);
}
 
byte readEEPROM(int deviceaddress, unsigned int eeaddress ) 
{
  byte rdata = 0x00;
  Wire.beginTransmission(deviceaddress);
  Wire.write((int)(eeaddress >> 8));   // MSB
  Wire.write((int)(eeaddress & 0xFF)); // LSB
  Wire.endTransmission();
  Wire.requestFrom(deviceaddress,1);
  if (Wire.available()) rdata = Wire.read();
  return rdata;
}

///////////////////////////////////
//Functions for the control system
///////////////////////////////////
boolean detectLaunch(){
  /* INPUT: NONE
   * OUTPUT: True if launch is detected, false otherwise
   * 
   */
   if(myIMU.az > LAUNCH_THRESHHOLD){
    return true;
   }
}
float getDeflection(float liftCoeff){
  /* INPUT: Desired coefficent of lift
   * OUTPUT: Flap deflection for lift coefficent
   * Currently does a linear approximation of the CL.
   */
   return liftCoeff*256.06;
}

float updateIMUData(){
  /* INPUT: NONE
   * OUTPUT: Rate of rotation in (???)
   * Updates all data values from the IMU
   */
   if (myIMU.readByte(MPU9250_ADDRESS, INT_STATUS) & 0x01){
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

float getAltitude(){
  /* INPUT: NONE
   * OUTPUT: Altitude in (???)
   */
}

float getVelocity(){
  /* INPUT: (???)
   * OUTPUT: velocity in (???)
   */
}

float findDeflection(float rotationRate, float desiredRR){
  /* INPUT: Rate of rotation of launch vehicle, desired rate of rotation
   * OUTPUT: Rotational accleration in (???) 
   */
   float alpha = (desiredRR - rotationRate)*p; //Find control error term and multiply by proportional const.
   float liftCoeff = alpha*I/(S*L); //Start calculation of lift coefficent
   liftCoeff = liftCoeff/(getVeclocity()*getVelcoity);
   return getDeflection(liftCoeff);
   
}

void setup() {
  //Intialize MPU 9250
  myIMU.MPU9250SelfTest(myIMU.SelfTest);
  myIMU.calibrateMPU9250(myIMU.gyroBias, myIMU.accelBias);
  myIMU.initMPU9250();
  myIMU.getAres(); //Get acclerometer resolution
  myIMU.getGres(); //Get gyroscope resolution
  Wire.begin();

}

void loop() {
  // put your main code here, to run repeatedly:

}
