/* This code simulates an altimeter, allowing the user to make
 * up altitude data for their project
 *  
 *  For use with the sensor MPL3115a2
 *  
 *  @author Sanskriti Joshi
 */
#include <Wire.h>
float Altitude = 4251.39;
byte byteArray[3];
byte val = 50;
int counter;
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  //calls method that converts the given altitude into
  // into its equivlilent byte array
  convertAltToArray(Altitude);
  Wire.begin(0x60);
  Wire.onRequest(requestEvent);
  Wire.onReceive(receiveEvent);
}

void loop() {
  // put your main code here, to run repeatedly:
  delay(500);
}

void requestEvent(){
    // the first part is to get anound any checks
    // or system setups
    if(val == 0x00){
      Wire.write(10);
      val = 50;
    }else
    //this is the actual important part: sending the fake
    //sensor data to the mcu for interpretation
    {
      int i;
      for(i = 0; i < 3; i++)
        Wire.write(byteArray[i]);
    }
    //this section allows changing the counter so you can choose
    //how long to simulate a flight plan
    //additionally, you can change the altitude inccrement
    counter += 1;
    if (counter <= 200){
      convertAltToArray(Altitude += 1.0);
    }
}
// this allows the simulator to read the data and then return a 
void receiveEvent(int count){
  while(Wire.available()){
    val = Wire.read();
  }
}

//this method converts the altitude parameter into
//the byte array that the mcu can understand
void convertAltToArray(float Altitude){
  float x, y, z; int xi, yi, zi;
  x = Altitude / 839.9;
  xi = int(x);
  Altitude -= float(xi) * 839.9;
  Serial.println(Altitude);
  delay(150);
  y = Altitude / 3.28;
  yi = int(y);
  Altitude -= float(yi) * 3.28;
  Serial.println(Altitude);
  delay(150);
  z = Altitude / .21;
  zi = int(z);
  if( y - float(yi) > .6){
    yi += 1;
  }
  if( zi % 16 >= 8){
    zi += 16;
  }
  Serial.print("x: "); Serial.println(x);
  Serial.print("xi: "); Serial.println(xi);
  Serial.print("y: "); Serial.println(y);  
  Serial.print("yi: "); Serial.println(yi);
  Serial.print("z: "); Serial.println(z);
  Serial.print("zi: "); Serial.println(zi);
  byteArray[0] = byte(xi);
  byteArray[1] = byte(yi);
  byteArray[2] = byte(zi);
}

