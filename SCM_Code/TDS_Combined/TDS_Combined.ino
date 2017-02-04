



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
#include <SparkFunMPL3115A2.h>
#include <SparkFun_ADXL345.h>
#include <SPI.h>
#include <Wire.h>
#define MPL3115A2_ADDRESS 0x61
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

int desired = 5280;
volatile byte lsb = 0;
volatile byte msb = 0;

volatile byte send_lsb = 1;

#define SENSOR_PWR 9
#define PI_PWR 8
#define SS 10
#define TAKE_PIC A0

#define LAUNCH_ACCEL 1.2

#define WAIT_FOR_LAUNCH 0
#define ASCENT 1
#define DESCENT 2
#define LANDING 3
#define RECOVERY 4

//Initial altitude reading
float initAltitude = 0;

//Difference between intial altitude and current altitude
float currAltitude = 0;

byte currState = WAIT_FOR_LAUNCH;

float asc[] = {2500, 3000, 3500, 4000, 4500}; //5 elements, hard coded but that can be changed
float dec[] = {4750, 4250, 3750, 3250, 2750, 2250, 1750, 1250}; //8 elements, same deal, numbers changed

int asc_ptr = 0;
int dec_ptr = 0;

//Max altitude
int max_alt = 0;

//Consecutive ascent readings
int asc_count = 0;

//Consecutive descent readings
int dec_count = 0;

//Accel count
 int count = 0; 
 
// SPI interrupt routine
//Capture what is coming in. 
ISR (SPI_STC_vect)
{
  Serial.println("Received");
  Serial.println(SPDR);
  if(send_lsb){
    msb = (int)currAltitude >> 8;
    SPDR = msb;
    send_lsb = 0;
  }else{
    lsb = (int)currAltitude & 0x00ff;
    SPDR = lsb;
    send_lsb = 1;
    digitalWrite(TAKE_PIC, LOW);
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
  
  
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
  pinMode(SENSOR_PWR, OUTPUT);
  pinMode(PI_PWR, OUTPUT);
  pinMode(TAKE_PIC, OUTPUT);
  pinMode(SS, INPUT);
  
  digitalWrite(5, HIGH);   // turn the LED on (HIGH is the voltage level)
  digitalWrite(6, HIGH);   // turn the LED on (HIGH is the voltage level)
  digitalWrite(7, HIGH);   // turn the LED on (HIGH is the voltage level)
  digitalWrite(SENSOR_PWR, LOW);
  digitalWrite(PI_PWR, LOW);
  digitalWrite(TAKE_PIC, LOW);

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
  initAltitude = measPressure.readAltitudeFt();
  delay(5);
  if(currState == WAIT_FOR_LAUNCH){
    Serial.println("WAIT_FOR_LAUNCH");
  }
  
}

void takePic(){
  digitalWrite(TAKE_PIC, HIGH);
}

/****************** MAIN CODE ******************/
/*  Accelerometer Readings and Min/Max Values  */
void loop()
{
 //Accelerometer - Determine launch
 int x,y,z; 
 
 if(currState == WAIT_FOR_LAUNCH)
 {                         // init variables hold results
  adxl.readAccel(&x, &y, &z);         // Read the accelerometer values and store in variables x,y,z
  accX = (x - offsetX)/gainX;         // Calculating New Values for X, Y and Z
  accY = (y - offsetY)/gainY;
  accZ = (z - offsetZ)/gainZ;
  float accMag = pow(accX, 2) + pow(accY, 2) + pow(accZ, 2);
  accMag = sqrt(accMag);
  if(accMag > LAUNCH_ACCEL)
  {
   Serial.println(accMag);
   count++;
  }
  else {
   count = 0;
  }
  if(count > 20) //arbitrary, we need 100 readings in a row saying that acceleration > 5gs
  {
   currState = ASCENT;
   Serial.print("LAUNCH");
  }
 }

 if(currState == ASCENT){
  currAltitude = measPressure.readAltitudeFt() - initAltitude;
  if(currAltitude > max_alt | max_alt < 750 ){
    max_alt = currAltitude;
    asc_count = 0;
  }else{
    if(currAltitude < max_alt){
      asc_count += 1;
    }
  }

  //We are consistently below max altitude, we are descending
  if(asc_count >= 20){
    currState = DESCENT;
    Serial.println("DESCENT");
  }

  //If we're at one of our target picture altitudes
  if(currAltitude >= asc[asc_ptr] && asc_ptr < 5){
    takePic();
    Serial.print("Picture captured at:");
    Serial.println((int)currAltitude);
    asc_ptr += 1;
  }

  delay(20);
 }

 if(currState == DESCENT){
  currAltitude = measPressure.readAltitudeFt() - initAltitude;
  
  if(currAltitude <= 1000){
   currState = LANDING;
   Serial.println("LANDING");
  }

  
  //If we're at one of our target picture altitudes
  if(currAltitude <= dec[dec_ptr] && dec_ptr < 8){
   takePic();
   Serial.print("Picture captured at:");
   Serial.println((int)currAltitude);
   dec_ptr += 1;
  }
  delay(20);
 }

 if(currState == LANDING){
  currAltitude = measPressure.readAltitudeFt() - initAltitude;

  if(currAltitude <= 50){
     Serial.println("Waiting to confirm landing...");
     delay(10000);
     takePic();
     Serial.println("Landing picture captured");
     delay(5000);
     takePic();
     Serial.println("Landing picture captured");
     delay(5000);
     takePic();
     Serial.println("Landing picture captured");
     currState = RECOVERY;
     Serial.println("Recovery");
  }
 }

 if(currState == RECOVERY){
  
 }
 
}
