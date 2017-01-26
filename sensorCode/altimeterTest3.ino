//Measures the altitude of the sensor in comparison to sea level

#include <Wire.h>
#include "SparkFunMPL3115A2.h"

#define chip1 0x51

MPL3115A2 measPressure;
float counter = 0;
float sum = 0;
float average = 0;
float dev = 0;
float min = 100000;
float max = 0;
float realAtitude; //some value from some trusted soruce

//void writeEEPROM(int deviceaddress, unsigned int eeaddress, byte data ) 
//{
//  Wire.beginTransmission(deviceaddress);
//  Wire.write((int)(eeaddress >> 8));   // MSB
//  Wire.write((int)(eeaddress & 0xFF)); // LSB
//  Wire.write(data);
//  Wire.endTransmission();
//  delay(5);
//}
// 
//byte readEEPROM(int deviceaddress, unsigned int eeaddress ) 
//{
//  byte rdata = 0x00;
//  Wire.beginTransmission(deviceaddress);
//  Wire.write((int)(eeaddress >> 8));   // MSB
//  Wire.write((int)(eeaddress & 0xFF)); // LSB
//  Wire.endTransmission();
//  Wire.requestFrom(deviceaddress,1);
//  if (Wire.available()) rdata = Wire.read();
//  return rdata;
//}


void setup() {
  Wire.begin();        // Join i2c bus
  Serial.begin(9600);  // Start serial for output
  measPressure.begin(); // Get sensor online
  
//  // adjust the altitude values by val meters
  byte val = 18; // difference between actual value and measured values in meters
  IIC_Write(0x2D, val); // adjust the altitude values to fix error

  //Configure the sensor
  measPressure.setModeAltimeter(); // Measure pressure above sea level in meters
  measPressure.setOversampleRate(7); // Set Oversample to the recommended 128
  measPressure.enableEventFlags(); // Enable all three pressure and temp event flags 
}

void loop() {

  float height = measPressure.readAltitudeFt();
  Serial.print("Altitude(Ft):");
  Serial.print(height, 2);
  Serial.println(); 
 
  delay(600);

}

void IIC_Write(byte regAddr, byte value)
{
  // This function writes one byto over IIC
  Wire.beginTransmission(MPL3115A2_ADDRESS);
  Wire.write(regAddr);
  Wire.write(value);
  Wire.endTransmission(true);
}

byte IIC_Read(byte regAddr)
{
  // This function reads one byte over IIC
  Wire.beginTransmission(MPL3115A2_ADDRESS);
  Wire.write(regAddr);  // Address of CTRL_REG1
  Wire.endTransmission(false); // Send data to I2C dev with option for a repeated start. THIS IS NECESSARY and not supported before Arduino V1.0.1!
  Wire.requestFrom(MPL3115A2_ADDRESS, 1); // Request the data...
  return Wire.read();
}
