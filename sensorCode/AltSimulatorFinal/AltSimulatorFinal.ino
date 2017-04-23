/* This code simulates an altimeter, allowing the user to make
 * up altitude data for their project
 *  
 *  For use with the sensor MPL3115a2
 *  
 *  @author Sanskriti Joshi
 */
#include <Wire.h>
//float Altitude = 4251.39;
float Altitude = 0;
byte byteArray[3];
byte val = 50;
int counter = 0;

byte ascent = 1;

float altArr[] = {250, 500, 1000, 1250, 1500, 1750, 2000, 2250, 2500, 2750, 3000, 3250, 3500, 3750, 4000, 4600, 5100, 4800, 4600, 4100, 3500.0, 3000.0, 2500.0, 2000.0, 1500.0, 1000.0, 750.0, 500.00, 300.00, 200.00, 0.0};

void convertAltToArray(float Altitude);
void receiveEvent(int count);
void requestEvent();

int packet_cntr = 0;
byte incoming_alt = 0;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  //calls method that converts the given altitude into
  // into its equivlilent byte array
  Serial.print("REAL VALUE: ");
  Serial.print(Altitude);
  convertAltToArray(Altitude);
  Wire.begin(0x61);
  Wire.onRequest(requestEvent);
  Wire.onReceive(receiveEvent);
}

void loop() {
  // put your main code here, to run repeatedly:
  delay(100);
}

void requestEvent(){
    // the first part is to get anound any checks
    // or system setups
    Serial.println("request");
    if(val == 0x00){
      Wire.write(10);
      val = 50;
    }else
    //this is the actual important part: sending the fake
    //sensor data to the mcu for interpretation
    {
      if(packet_cntr >= 3){
        packet_cntr = 0;
        incoming_alt = 0;
        int i;
        for(i = 0; i < 3; i++){
          Wire.write(byteArray[i]);
        }
        
        //this section allows changing the counter so you can choose
        //how long to simulate a flight plan
        //additionally, you can change the altitude inccrement
        if(ascent){
          Altitude += 3;
          if(Altitude >= 4300){
            ascent = 0;
          }
        }else{
          if(Altitude > 0){
            Altitude -= 1;
          }
        }
        
        Serial.print("Altitude:");
        Serial.println(Altitude);
        convertAltToArray(Altitude);
       
      }
    }
}

// this allows the simulator to read the data and then return a 
void receiveEvent(int count){
  
  while(Wire.available()){
    val = Wire.read();
    if(packet_cntr == 0){
      Serial.println(val);
    }
  }

  if(val == 38){
    incoming_alt = 1;
  }else{
    if(incoming_alt){
      packet_cntr += 1;
    }
  }
}

//this method converts the altitude parameter into
//the byte array that the mcu can understand
void convertAltToArray(float Altitude){
  float x, y, z; int xi, yi, zi;
  x = Altitude / 839.9;
  xi = int(x);
  Altitude -= float(xi) * 839.9;
  //Serial.println(Altitude);
  delay(150);
  y = Altitude / 3.28;
  yi = int(y);
  Altitude -= float(yi) * 3.28;
  //Serial.println(Altitude);
  delay(150);
  z = Altitude / .21;
  zi = int(z);
  if( y - float(yi) > .6){
    yi += 1;
  }
  if( zi % 16 >= 8){
    zi += 16;
  }
//  Serial.print("x: "); Serial.println(x);
//  Serial.print("xi: "); Serial.println(xi);
//  Serial.print("y: "); Serial.println(y);  
//  Serial.print("yi: "); Serial.println(yi);
//  Serial.print("z: "); Serial.println(z);
//  Serial.print("zi: "); Serial.println(zi);
  byteArray[0] = byte(xi);
  byteArray[1] = byte(yi);
  byteArray[2] = byte(zi);
}

