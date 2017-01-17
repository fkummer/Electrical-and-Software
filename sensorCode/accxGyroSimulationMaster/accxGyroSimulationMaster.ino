/* This code acts as the master for the accelerometer 
 * and gyroscope simulations, allowing the user to make
 * up accelerometer and gyroscope data for their project
 *  
 *  For use with the sensor MPU9250
 *  
 *  @author Sanskriti Joshi
 */
#include <Wire.h>
#include "MPU9250.h"

#define MPU9250_ADDRESS 0x68
#define INT_STATUS 0x3A
MPU9250 myIMU;

void setup() {
  Serial.begin(9600);
  Wire.begin();
  myIMU.getAres(); //Get acclerometer resolution
  myIMU.getGres();// get gyroscope resolution
}

void loop() {
  // put your main code here, to run repeatedly:
  // Now we'll calculate the accleration value into actual g's
  // This depends on scale being set
  //Serial.print("aRes "); Serial.println(myIMU.aRes, 6); // see the aRes value
  myIMU.readAccelData(myIMU.accelCount);  // Read the x/y/z adc values
  int i;
  for(i = 0; i < 3; i++){
    Serial.println(myIMU.accelCount[i], DEC);
  }
  myIMU.ax = (float)myIMU.accelCount[0] * myIMU.aRes; // - myIMU.accelBias[0];
  myIMU.ay = (float)myIMU.accelCount[1] * myIMU.aRes; // - myIMU.accelBias[1];
  myIMU.az = (float)myIMU.accelCount[2] * myIMU.aRes; // - myIMU.accelBias[2];

  myIMU.readGyroData(myIMU.gyroCount);  // Read the x/y/z adc values
  // Calculate the gyro value into actual degrees per second
  // This depends on scale being set
  for(i = 0; i < 3; i++){
    Serial.println(myIMU.gyroCount[i], DEC);
  }
  myIMU.gx = (float)myIMU.gyroCount[0] * myIMU.gRes;
  myIMU.gy = (float)myIMU.gyroCount[1] * myIMU.gRes;
  myIMU.gz = (float)myIMU.gyroCount[2] * myIMU.gRes;

  //Acclerometer readings
  Serial.print("X-acceleration: "); Serial.print(1000 * myIMU.ax, 6);
  Serial.println(" mg");
  Serial.print("Y-acceleration: "); Serial.print(1000 * myIMU.ay, 6);
  Serial.println(" mg");
  Serial.print("Z-acceleration: "); Serial.print(1000 * myIMU.az, 6);
  Serial.println(" mg");

  //Gyroscope readings
  Serial.print("X-gyro rate: "); Serial.print(myIMU.gx, 4);
  Serial.println(" degrees/sec ");
  Serial.print("Y-gyro rate: "); Serial.print(myIMU.gy, 4);
  Serial.println(" degrees/s wec ");
  Serial.print("Z-gyro rate: "); Serial.print(myIMU.gz, 4);
  Serial.println(" degrees/sec");
 
  delay(250);
 }

