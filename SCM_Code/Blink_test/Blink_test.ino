
// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
  Serial.begin(9600);
}

// the loop function runs over and over again forever
void loop() {

  digitalWrite(5, HIGH);   // turn the LED on (HIGH is the voltage level)
  digitalWrite(6, HIGH);   // turn the LED on (HIGH is the voltage level)
  digitalWrite(7, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(250);                       // wait for a second
  digitalWrite(5, LOW);    // turn the LED off by making the voltage LOW
  digitalWrite(6, LOW);    // turn the LED off by making the voltage LOW
  digitalWrite(7, LOW);    // turn the LED off by making the voltage LOW
  //Serial.println("yello");
  delay(250);                       // wait for a second
}
