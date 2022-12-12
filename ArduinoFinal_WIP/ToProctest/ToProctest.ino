const int SENSOR = A0; //sensor hooked up to analog pin A0
const int SWITCH = 2;
const int LED = 11;
const int LED2=10;
int sensor_val = 0;
int switch_val = 0;

void setup() {
  pinMode (SENSOR, INPUT);
  pinMode (LED, OUTPUT);
  pinMode (LED2, OUTPUT);
  pinMode (SWITCH, INPUT_PULLUP);
  Serial.begin(115200); 
}

void loop() {
  sensor_val = analogRead(SENSOR); //read sensor and assign to variable called val
  switch_val = digitalRead(SWITCH);
 // analogWrite(LED, sensor_val/4);

 if(switch_val == LOW){
    Serial.println("OPEN");
   }else if(switch_val ==HIGH){
    Serial.println("CLOSED");
    }
 //Door sensor together and pressure on FSR = RED LIGHT/NO WHITE(NOT safe) 
   if (switch_val == LOW && sensor_val >250) { // if button is pressed (voltage received on pin 2)
    Serial.println(" - Trap Active");
    digitalWrite(LED, HIGH);
    digitalWrite(LED2,LOW);// send voltage to LED pin
    
    //Door sensor apart and no pressure on FSR = White LIGHT/Safe  
  } else if (switch_val == HIGH || switch_val ==LOW && sensor_val<250){   //otherwise
    Serial.println(" - Trap Disarmed");
    digitalWrite(LED, LOW);
    digitalWrite(LED2,HIGH);  
  }
    

  Serial.print('H'); // unique header to identify start of message
  Serial.print(",");
  Serial.print(sensor_val,DEC);
  Serial.print(",");
  Serial.print(switch_val,DEC);
  Serial.print(",");  // note that a comma is sent after the last field
  Serial.println();  // send a cr/lf

  delay(30); // Wait 100 milliseconds
}
