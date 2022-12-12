//const int buttonPin = 8;   //placeholder of magnetic sensor
const int sensor = 2;
const int fsr= A0;
int fsrreading;
int state;

const int LED1 =  11;     
const int LED2=10;

// setup runs once at startup
void setup() {
  pinMode(sensor, INPUT_PULLUP); 
  pinMode(LED1, OUTPUT); 
  pinMode(LED2, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  state = digitalRead(sensor);
  //Serial.println(sensor);
  Serial.print("FSR READING: ");
int fsrreading = analogRead(fsr);// Read the FSR pin and store the output as fsrreading:
  Serial.println(fsrreading);
delay(10);
  if(state == LOW){
    Serial.println("OPEN");
   }else if(state ==HIGH){
    Serial.println("CLOSED");
    }
 //Door sensor together and pressure on FSR = RED LIGHT/NO WHITE(NOT safe) 
   if (state == LOW && fsrreading >250) { // if button is pressed (voltage received on pin 2)
    Serial.println(" - Trap Active");
    digitalWrite(LED1, HIGH);
    digitalWrite(LED2,LOW);// send voltage to LED pin
    
    //Door sensor apart and no pressure on FSR = White LIGHT/Safe  
  } else if (state == HIGH || state ==LOW && fsrreading<250){   //otherwise
    Serial.println(" - Trap Disarmed");
    digitalWrite(LED1, LOW);
    digitalWrite(LED2,HIGH);  
  }
  
 
  
}
