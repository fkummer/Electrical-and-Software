/* RCS MCU CODE V2
    Chris Fedors





*/
#include <Wire.h>
#include <Servo.h>
#include "MPU9250.h"
#include "SparkFunMPL3115A2.h"

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
const float Rho = 1; //Air density
const float S = 1; //
const float L = 1; //

unsigned long startTime = 0;
unsigned long endTime = 0;
unsigned long currTime = 0;

unsigned long memAddress = 0;

MPU9250 myIMU;
MPL3115A2 myPressure;
Servo motor;

//Globals required for control system
float spinRate = 0;
float currentAlt = 0;
float prevAlt = 0;
float velocity = 0;

///////////////////////////////////////////////////////
//Helper functions for reading/writing to EEPROM chips
//////////////////////////////////////////////////////
void writeEEPROM(int deviceaddress, unsigned int eeaddress, char* data)
{
  // Uses Page Write for 24LC256
  // Allows for 64 byte page boundary
  // Splits string into max 16 byte writes
  unsigned char i = 0, counter = 0;
  unsigned int  address;
  unsigned int  page_space;
  unsigned int  page = 0;
  unsigned int  num_writes;
  unsigned int  data_len = 0;
  unsigned char first_write_size;
  unsigned char last_write_size;
  unsigned char write_size;

  // Calculate length of data
  do {
    data_len++;
  } while (data[data_len]);

  // Calculate space available in first page
  page_space = int(((eeaddress / 64) + 1) * 64) - eeaddress;

  // Calculate first write size
  if (page_space > 16) {
    first_write_size = page_space - ((page_space / 16) * 16);
    if (first_write_size == 0) first_write_size = 16;
  }
  else
    first_write_size = page_space;

  // calculate size of last write
  if (data_len > first_write_size)
    last_write_size = (data_len - first_write_size) % 16;

  // Calculate how many writes we need
  if (data_len > first_write_size)
    num_writes = ((data_len - first_write_size) / 16) + 2;
  else
    num_writes = 1;

  i = 0;
  address = eeaddress;
  for (page = 0; page < num_writes; page++)
  {
    if (page == 0) write_size = first_write_size;
    else if (page == (num_writes - 1)) write_size = last_write_size;
    else write_size = 16;

    Wire.beginTransmission(deviceaddress);
    Wire.write((int)((address) >> 8));   // MSB
    Wire.write((int)((address) & 0xFF)); // LSB
    counter = 0;
    do {
      Wire.write((byte) data[i]);
      i++;
      counter++;
    } while ((data[i]) && (counter < write_size));
    Wire.endTransmission();
    address += write_size; // Increment address for next write

    delay(6);  // needs 5ms for page write
  }
}

void readEEPROM(int deviceaddress, unsigned int eeaddress,
                unsigned char* data, unsigned int num_chars)
{
  unsigned char i = 0;
  Wire.beginTransmission(deviceaddress);
  Wire.write((int)(eeaddress >> 8));   // MSB
  Wire.write((int)(eeaddress & 0xFF)); // LSB
  Wire.endTransmission();

  Wire.requestFrom(deviceaddress, num_chars);

  while (Wire.available()) data[i++] = Wire.read();
}

String logData(String dataString) {
  /* INPUT: NONE
     OUTPUT: NONE
     Logs flight data to EEPROM
  */
  //String dataString = (String)currTime + ": " + (String)myIMU.ax + ", " + (String)myIMU.gz + ", " + (String)currentAlt + " \n";
  unsigned char* dataChar[dataString.length()];
  dataString.toCharArray(dataChar, dataString.length());
  writeEEPROM(FLIGHT_STORAGE, memAddress, dataChar); //Find length of String later
  //memAddress += dataString.length();
  return dataString;
}

String readData(unsigned int address, unsigned int readLen) {
  /* INPUT: Start address of data to be read, length (in chars) of memory to be read
     OUTPUT: String of data requested
  */
  char dataChar[readLen - 1];
  readEEPROM(FLIGHT_STORAGE, address, dataChar, readLen);
  return String(dataChar);
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
     OUTPUT: velocity in feet per second
  */
  velocity = (currentAlt - prevAlt) * 10;
  return velocity;
}

float findDeflection(float rotationRate, float desiredRR) {
  /* INPUT: Rate of rotation of launch vehicle, desired rate of rotation
     OUTPUT: Rotational accleration in (???)
  */
  float alpha = (desiredRR - rotationRate) * P * DEG_TO_RAD; //Find control error term and multiply by proportional const.
  float liftCoeff = alpha * I / (S * L); //Start calculation of lift coefficent
  liftCoeff = liftCoeff / (velocity * velocity);
  return getDeflection(liftCoeff);
}

void deflectFlaps(float deflection) {
  /* INPUT: Flap deflection in degrees
     OUTPUT: NONE
     Converts fin deflection to motor angle, saturates at +-30 degrees from
     center angle of 90.
     
  */
  int angle = deflection * 2.0 + 90
  if (angle > 120) {
    angle = 120;
  } else if (angle < 60) {
    angle = 60;
  }
  motor.write(angle);
}

void controlAlgo(float desiredRate) {
  /* INPUT: NONE
     OUTPUT: NONE
     The control algorithm. Computes the nessecary fin
  */
  getAltitude();
  getVelocity();
  updateIMUData();
  float deflection = findDeflection(myIMU.gz, desiredRate);
  deflectFlaps(deflection);
}

void setup() {
  Serial.begin(9600);
  pinMode(LED_PIN, OUTPUT);
  pinMode(FEEDBACK_PIN, INPUT);
  motor.attach(MOTOR_PIN);
  //Intialize MPU 9250
  Wire.begin();
  //Set up IMU
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
  memAddress = 0;
}

void loop() {
  // put your main code here, to run repeatedly:
  currTime = millis();
  String dataString = (String)currTime + ": " + (String)myIMU.ax + ", " + (String)myIMU.gz + ", " + (String)currentAlt + " \n";
  Serial.println(logData(dataString));
  //Serial.println(dataString.length()+1);
  delay(250);
  Serial.println(readData(memAddress, dataString.length()));
  Serial.println(memAddress);
  memAddress += dataString.length();
  digitalWrite(LED_PIN, HIGH);
  delay(250);
  digitalWrite(LED_PIN, LOW);

}
