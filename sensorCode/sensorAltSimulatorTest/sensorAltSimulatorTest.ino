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

float realAltitude = 4251.39; //some value from some trusted soruce

void setup() {
  Wire.begin();        // Join i2c bus
  Serial.begin(9600);  // Start serial for output
  measPressure.begin(); // Get sensor online

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

  //prints how far off the simulated sensor is from the choosen altitude
  Serial.print("Difference from real Altitude: "); Serial.print(realAltitude - altitude);
  Serial.println();
  
  delay(600);

}
