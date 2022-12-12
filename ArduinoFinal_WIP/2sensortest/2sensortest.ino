
const int SENSOR = A0; //sensor hooked up to analog pin A0
const int SWITCH = 2;
const int LED = 10;
int sensor_val = 0;
int switch_val = 0;

void setup() {
  pinMode (SENSOR, INPUT);
  pinMode (LED, OUTPUT);
  pinMode (SWITCH, INPUT_PULLUP);
  Serial.begin(115200); // Start serial communication at 9600 baud
}

void loop() {
  sensor_val = analogRead(SENSOR); //read sensor and assign to variable called val
  switch_val = digitalRead(SWITCH);
  analogWrite(LED, sensor_val/4);

  Serial.print('H'); // unique header to identify start of message
  Serial.print(",");
  Serial.print(sensor_val,DEC);
  Serial.print(",");
  Serial.print(switch_val,DEC);
  Serial.print(",");  // note that a comma is sent after the last field
  Serial.println();  // send a cr/lf

  delay(30); // Wait 100 milliseconds
}
