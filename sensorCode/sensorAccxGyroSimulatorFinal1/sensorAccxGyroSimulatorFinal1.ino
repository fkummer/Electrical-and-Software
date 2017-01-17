/* This code simulates an accelerometer and gyroscope, 
 * allowing the user to make up accelerometer and gyroscope data 
 * for their project
 *  
 *  For use with the sensor MPU9250
 *  
 *  @author Sanskriti Joshi
 */
#include <Wire.h>
#include <stdint.h>

float aArray[3] = {30, 20, 40}; // set acceleration values
float gArray[3] = {10, 20, 10}; // set gyroscope values
byte data = 0;
byte byteAArray[6]; //= {0, 0, 0, 2, 0, 2};
byte byteGArray[6]; // = {0, 2, 0, 2, 0, 2};
int counter = 0;

void setup() {
  Serial.begin(9600);
  convertToB(gArray, 1.953, 0.0076); //create byte array
  convertToB(aArray, 15.63, 0.06);  
  Wire.begin(0x68);
  Wire.onRequest(requestEvent);
  Wire.onReceive(receiveEvent);
}

void loop() {
  delay(500);
}

void requestEvent() { // send bytes to main
  //  if(data == 59 || data == 67){
  //    Wire.write(data);
  //    data = 0;
  //  }else
  if (counter == 0) {
    int i;
    for (i = 0; i < 6; i++)
      Wire.write(byteAArray[i]);
    counter = 1;
  } else if (counter != 0) {
    int i;
    for (i = 0; i < 6; i++)
      Wire.write(byteGArray[i]);
    counter = 0;
  }
}

void receiveEvent(int numBytes) { //recieve bytes from main
  while (Wire.available()) {
    data = Wire.read();
    Serial.println(data);
  }
}
//this function converts the float measurements into a byte array
//that can be understood by main
void convertToB(float sArray[], float ms, float ls) {
  int i;
  for (i = 0; i < 3; i++) {
    float x, y, v; int xi, yi;
    v = 0;
    v = sArray[i];
    x = v / ms;
    xi = int(x);
    v -= float(xi) * ms;
    y = v / ls;
    yi = int(y);
    if (y - float(yi) > .5) {
      yi += 1;
    }
    Serial.print("x: "); Serial.println(x);
    Serial.print("xi: "); Serial.println(xi);
    Serial.print("y: "); Serial.println(y);
    Serial.print("yi: "); Serial.println(yi);
    if (ms == 1.953) {
      byteGArray[2 * i] = byte(xi);
      byteGArray[(2 * i) + 1] = byte(yi);
    } if ( ms == 15.63) {
      byteAArray[2 * i] = byte(xi);
      byteAArray[(2 * i) + 1] = byte(yi);
    }
  }
}

