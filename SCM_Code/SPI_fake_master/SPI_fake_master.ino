
// inslude the SPI library:
#include <SPI.h>


// set pin 10 as the slave select for the digital pot:
const int slaveSelectPin = 10;
byte recv;

void setup() {
  // set the slaveSelectPin as an output:
  pinMode(5, OUTPUT);
  digitalWrite(5, HIGH);
  pinMode(slaveSelectPin, OUTPUT);
  // initialize SPI:
  SPI.begin();
}

void loop() {
  recv = SPI.transfer('b');
  Serial.println(recv);
  delay(1000);
}

