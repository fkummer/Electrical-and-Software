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

#define GREEN_LED 5
#define YELLOW_LED 6
#define BLUE_LED 7
#define PI_GPIO A0
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

float starting_altitude = 0;
float curr_altitude = 0;

int x,y,z;  

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
  
  pinMode(GREEN_LED, OUTPUT);
  pinMode(YELLOW_LED, OUTPUT);
  pinMode(BLUE_LED, OUTPUT);
  pinMode(PI_GPIO, OUTPUT);
  
  
  digitalWrite(GREEN_LED, HIGH);   // turn the LED on (HIGH is the voltage level)
  digitalWrite(YELLOW_LED, HIGH);   // turn the LED on (HIGH is the voltage level)
  digitalWrite(BLUE_LED, HIGH);   // turn the LED on (HIGH is the voltage level)
  digitalWrite(PI_GPIO, LOW);
  
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
  
  //Configure the sensor
  measPressure.setModeAltimeter(); // Measure altitude above sea level in meters
  measPressure.setOversampleRate(7); // Set Oversample to the recommended 128
  measPressure.enableEventFlags(); // Enable all three pressure and temp event flags 

  byte offset = 24;
  IIC_Write(OFF_H, offset);

  delay(5);

  //Need to get our baseline altitude
  //All altitudes are measured with reference to this
  starting_altitude = measPressure.readAltitudeFt();
  Serial.println("Start");
}

/****************** MAIN CODE ******************/
/*  Accelerometer Readings and Min/Max Values  */
void loop()
{
  int cntr = 0;
  byte launched = 0;

  while(!launched){
    //Wait for launch level acceleration
    // Get the Accelerometer Readings
    
    adxl.readAccel(&x, &y, &z);         // Read the accelerometer values and store in variables x,y,z
  
    accX = (x - offsetX)/gainX;         // Calculating New Values for X, Y and Z
    accY = (y - offsetY)/gainY;
    accZ = (z - offsetZ)/gainZ;
  

    float accMag = pow(accX,2) + pow(accY,2) + pow(accZ,2);
    accMag = sqrt(accMag);
    Serial.println(accMag);
    
    while(accMag > 2 && cntr < 50){
      adxl.readAccel(&x, &y, &z);         // Read the accelerometer values and store in variables x,y,z
      accX = (x - offsetX)/gainX;         // Calculating New Values for X, Y and Z
      accY = (y - offsetY)/gainY;
      accZ = (z - offsetZ)/gainZ;
      accMag = pow(accX,2) + pow(accY,2) + pow(accZ,2);
      accMag = sqrt(accMag);
      cntr += 1;
    }

    if(cntr >= 50){
      launched = 1;
    }else{
      launched = 0;
      cntr = 0;
    }
  }

  
  Serial.println("Launch!");

  while(curr_altitude < 4800){
    Serial.println(measPressure.readAltitudeFt());
    curr_altitude = measPressure.readAltitudeFt() - starting_altitude;
    Serial.println(curr_altitude);
    delay(500);
  }
}

