/*
  ESC_Knob
  Controlling an R/C ESC (Electronic Speed Controller) speed using a potentiometer (variable resistor)
  This is using a modified version of the "Knob" example in the "Servo" library.
    
  27 April 2017
  by Eric Nantel
  
  Servo & Knob links
  http://www.arduino.cc/en/Tutorial/Knob
  http://people.interaction-ivrea.it/m.rinott
 */
#include "ESC.h"
#define POT_PIN (0)                    // Analog pin used to connect the potentiometer

ESC myESC (11, 1000, 2000, 1500);         // ESC_Name (PIN, Minimum Value, Maximum Value, Arm Value)

int val;                                // variable to read the value from the analog pin
int dir;

void setup() {
  Serial.begin(9600);
  Serial.println("Arming");
  myESC.arm();                          // Send the Arm value
  //delay(5000);                          // Wait for a while
  val = 0;
  dir = 1;
}

void loop() {
  for(int i = 0; i < 10; i++) {
    val = val + analogRead(POT_PIN);   // reads the value of the potentiometer (value between 0 and 1023)
    delay(3);
  }
  if(!digitalRead(2)) {
    myESC.speed(1500);
    while(1) 
      Serial.println("Emergency stop. Reset board to continue");
  }
  if(!digitalRead(3)){
    while(!digitalRead(3)) delay(2);
    if(dir) dir = 0;
    else if(!dir) dir = 1;
  }
  val = val / 10;
  if(dir) val = map(val, 0, 750, 1500, 1800);  // scale it to use it with the ESC (value between 1000 and 2000)
  else if(!dir) val = map(val, 0, 750, 1500, 1200);
  Serial.print("Sending value "); Serial.print(val); Serial.println(" to ESC.");
  myESC.speed(val);                    // sets the ESC speed according to the scaled value
  val = 0;
  delay(10);                           // Wait for a while
}
