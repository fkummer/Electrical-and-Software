
#include <SPI.h>

#define NOT_AN_INTERRUPT -1

// SPI interrupt routine
//Capture what is coming in. 

byte ret = 1;
ISR (SPI_STC_vect)
{
  Serial.println("Received");
  Serial.println(SPDR);
  SPDR = ret;
  ret++;
}// end of interrupt service routine (ISR) SPI_STC_vect


void setup() {
  Serial.begin(115200);
  Serial.println("Begin");
  //SPI setup
  SPI.setClockDivider(SPI_CLOCK_DIV32);
  
  // have to send on master in, *slave out*
  pinMode(MISO, OUTPUT);
  
  // turn on SPI in slave mode
  SPCR |= _BV(SPE);
  
  // turn on interrupts
  SPCR |= _BV(SPIE);
  
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
  pinMode(A0, OUTPUT);

  digitalWrite(5, HIGH);   // turn the LED on (HIGH is the voltage level)
  digitalWrite(6, HIGH);   // turn the LED on (HIGH is the voltage level)
  digitalWrite(7, HIGH);   // turn the LED on (HIGH is the voltage level)
  digitalWrite(A0, HIGH); 
  
  delay(5);
}


void loop() {
 
}
