
/* Measures the altitude of the sensor in comparison to sea level
 *  
 *  For use with the sensor MPL3115a2/ or the sensor simulator
 *  
 *  @author Sanskriti Joshi
 */
#include <Wire.h>
#include "SparkFunMPL3115A2.h"
#define MPL3115A2_ADDRESS 0x60
#define STATUS 0x00

MPL3115A2 measPressure;


void setup() {
  Wire.begin();        // Join i2c bus
  Serial.begin(9600);  // Start serial for output
  measPressure.begin(); // Get sensor online
  pinMode(5, OUTPUT);
  digitalWrite(5, HIGH);
  //Configure the sensor
  measPressure.setModeAltimeter(); // Measure altitude above sea level in meters
  measPressure.setOversampleRate(7); // Set Oversample to the recommended 128
  measPressure.enableEventFlags(); // Enable all three pressure and temp event flags 
}

void loop() {
  //calls the method readAltitudeFt();
  float altitude = measPressure.readAltitudeFt();
  Serial.print("Altitude(ft):");
  Serial.print(altitude, 2);
  Serial.println();
  delay(600);

}
