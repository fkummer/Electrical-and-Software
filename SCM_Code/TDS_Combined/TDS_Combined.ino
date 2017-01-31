/*  *****************************************
 *  ADXL345_Calibration
 *  ADXL345 Hook Up Guide Calibration Example 
 *  
 *  Utilizing Sparkfun's ADXL345 Library
 *  Bildr ADXL345 source file modified to support 
 *  both I2C and SPI Communication
 *  
 *  E.Robert @ SparkFun Electronics
 *  Created: Jul 13, 2016
 *  Updated: Sep 13, 2016
 *  
 *  Development Environment Specifics:
 *  Arduino 1.6.11
 *    
 *  Hardware Specifications:
 *  SparkFun ADXL345
 *  Arduino Uno
 *  *****************************************/
 
#include <SparkFun_ADXL345.h>
#include <SPI.h>
#include <Wire.h>
#include "SparkFunMPL3115A2.h"
#define MPL3115A2_ADDRESS 0x60
#define STATUS 0x00

MPL3115A2 measPressure;

/*********** COMMUNICATION SELECTION ***********/
ADXL345 adxl = ADXL345();             // USE FOR I2C COMMUNICATION

/****************** VARIABLES ******************/

float accX = 0;
float accY = 0;
float accZ = 0;

/************** DEFINED VARIABLES **************/
/*                                             */
#define offsetX   2.0       // OFFSET values
#define offsetY   1.0
#define offsetZ   6.5

#define gainX     65        // GAIN factors
#define gainY     66
#define gainZ     63.5 

#define NOT_AN_INTERRUPT -1

int desired = 0;
volatile byte lsb = 0;
volatile byte msb = 0;

volatile byte send_lsb = 1;

byte a0_state = 1;

// SPI interrupt routine
//Capture what is coming in. 
ISR (SPI_STC_vect)
{
  Serial.println("Received");
  Serial.println(SPDR);
  if(send_lsb){
    msb = desired >> 8;
    SPDR = msb;
    send_lsb = 0;
  }else{
    lsb = desired & 0x00ff;
    SPDR = lsb;
    send_lsb = 1;
    desired = desired + 10;
  }
}// end of interrupt service routine (ISR) SPI_STC_vect

//Write a register on the altimeter
void IIC_Write(byte regAddr, byte value)
{
  // This function writes one byto over IIC
  Wire.beginTransmission(MPL3115A2_ADDRESS);
  Wire.write(regAddr);
  Wire.write(value);
  Wire.endTransmission(true);
}

/******************** SETUP ********************/
/*          Configure ADXL345 Settings         */
void setup()
{
  Serial.begin(115200);                 // Start the serial terminal
  Serial.println("Begin");
  
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
  pinMode(A0, OUTPUT);
  
  
  digitalWrite(5, HIGH);   // turn the LED on (HIGH is the voltage level)
  digitalWrite(6, HIGH);   // turn the LED on (HIGH is the voltage level)
  digitalWrite(7, HIGH);   // turn the LED on (HIGH is the voltage level)
  digitalWrite(A0, a0_state);
  
    //SPI setup
  SPI.setClockDivider(SPI_CLOCK_DIV32);
  
  // have to send on master in, *slave out*
  pinMode(MISO, OUTPUT);
  
  // turn on SPI in slave mode
  SPCR |= _BV(SPE);
  
  // turn on interrupts
  SPCR |= _BV(SPIE);

  //Accelerometer
  adxl.powerOn();                     // Power on the ADXL345

  adxl.setRangeSetting(8);           // Give the range settings
                                      // Accepted values are 2g, 4g, 8g or 16g
                                      // Higher Values = Wider Measurement Range
                                      // Lower Values = Greater Sensitivity

  //Altimeter section
  Wire.begin();        // Join i2c bus
  measPressure.begin(); // Get sensor online
  pinMode(5, OUTPUT);
  digitalWrite(5, HIGH);
 
  //Configure the sensor
  measPressure.setModeAltimeter(); // Measure altitude above sea level in meters
  measPressure.setOversampleRate(7); // Set Oversample to the recommended 128
  measPressure.enableEventFlags(); // Enable all three pressure and temp event flags 

  byte offset = 24;
  IIC_Write(OFF_H, offset);

  delay(5);
 
  float initAltitude = measPressure.readAltitudeFt();
  Serial.print("Initial Altitude:");
  Serial.print(initAltitude, 2);
  Serial.println();
   // Get the Accelerometer Readings
  int x,y,z;                          // init variables hold results
  adxl.readAccel(&x, &y, &z);         // Read the accelerometer values and store in variables x,y,z
  

  accX = (x - offsetX)/gainX;         // Calculating New Values for X, Y and Z
  accY = (y - offsetY)/gainY;
  accZ = (z - offsetZ)/gainZ;

  Serial.print(accX); Serial.print("  "); Serial.print(accY); Serial.print("  "); Serial.print(accZ);
  Serial.println(); 
}

/****************** MAIN CODE ******************/
/*  Accelerometer Readings and Min/Max Values  */
void loop()
{
 //Accelerometer - Determine launch
 boolean inLaunch = false;
 int count = 0; 
 while(inLaunch == false)
 {
  int x,y,z;                          // init variables hold results
  adxl.readAccel(&x, &y, &z);         // Read the accelerometer values and store in variables x,y,z
  accX = (x - offsetX)/gainX;         // Calculating New Values for X, Y and Z
  accY = (y - offsetY)/gainY;
  accZ = (z - offsetZ)/gainZ;
  float accMag = pow(accX, 2) + pow(accY, 2) + pow(accZ, 2);
  accMag = sqrt(accMag);
  if(accMag > 5.0)
  {
   count++;
  }
  else {
   count = 0;
  }
  if(count > 1000) //arbitrary, we need 1000 readings in a row saying that acceleration > 5gs
  {
   inLaunch = true;
  }
 }
 
 
 // Altimeter - Signal to take photos
 float asc[] = {1000, 1500, 2000, 2500, 3000, 3500, 4000, 4500, 5000}; //9 elements, hard coded but that can be changed
 float dec[] = {4750, 4250, 3750, 3250, 2750, 2250, 1750, 1250}; //8 elements, same deal, numbers changed
 
 //during ascent
 for(int i = 0; i < 8; i++;)
 {
   if(i > asc[i])
   {
    //trigger gpio, take photo etc.
   }
 }

 //during descent
 for(int i = 0; i < 7; i++;)
 {
   if(i < asc[i])
   {
    //trigger gpio, take photo etc.
   }
 }  
}
