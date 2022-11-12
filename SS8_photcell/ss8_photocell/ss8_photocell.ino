const int sensor = A0;
const int LED = 12;
int value =0;

void setup() {
pinMode(LED,OUTPUT);  
Serial.begin(9600);//Serial.print() ascii charas
//Serial.write() bytes/ binary data 
}

void loop() {
  value=analogRead(sensor);//0-1023
  
  delay(50);
  value = value/4;
  //Serial.println(value);
  Serial.write(value);
  analogWrite(LED,value);
}
