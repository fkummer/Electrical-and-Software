/* RCS MCU CODE V2
 *  Chris Fedors
 *  
 * 
 * 
 * 
 * 
 */
#include <Wire.h>

#define LED 3
#define flightState 0x54 //I2C address of flight state chip
#define flightStorage 0x50 //I2C address of flight storage chip


float P = 8.5; //Proportianal constant for the control system.
float I;
float Rho;
float S;
float L;

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
float getDeflection(float liftCoeff){
  /* INPUT: Desired coefficent of lift
   * OUTPUT: Flap deflection for lift coefficent
   * 
   */
   return liftCoeff*256.06;
}

float getGyroRate(){
  /* INPUT: NONE
   * OUTPUT: Rate of rotation in (???)
   */
  
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

float findDeflection(float error){
  /* INPUT: Rate of rotation of launch vehicle, desired rate of rotation
   * OUTPUT: Rotational accleration in (???) 
   */
   float liftCoeff = error*P*I/(S*L); //Start calculation of lift coefficent
   liftCoeff = liftCoeff/(getVelocity()*getVelocity());
   return getDeflection(liftCoeff);
   
}

void setup() {
  // put your setup code here, to run once:
  pinMode(LED, OUTPUT);
  digitalWrite(LED, LOW);
  Serial.begin(9600);
  Wire.begin();

}

void loop() {
  //for(int x = 0; x<100; x++){
  //  writeEEPROM(flightStorage, x, x);
  //}
  Serial.println("Storage");
  for(int x = 0; x<100; x++){
    writeEEPROM(flightStorage, x, 10*x);
  }
  Serial.println("State");
  for(int x = 0; x<100; x++){
    writeEEPROM(flightState, x, 10*x);
  }
  Serial.println("Storage");
  for(int x = 0; x<100; x++){
    Serial.println(readEEPROM(flightStorage, x));
  }
  Serial.println("State");
  for(int x = 0; x<100; x++){
    Serial.println(readEEPROM(flightState, x));
  }
  digitalWrite(LED, HIGH);
  delay(100000);
  // put your main code here, to run repeatedly:

}
