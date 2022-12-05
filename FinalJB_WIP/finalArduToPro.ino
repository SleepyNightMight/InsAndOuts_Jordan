const int FSR = A0;
const int BUTTON = 8 ;
const int LED1= 10;
const int LED2=11;

int fsrreading;
int button_val = 0;
int fsr_val=0;

int LEDState = LOW;         // tracks current state of LED pin
int buttonState = LOW;             // tracks current reading of button pin


void setup() {
 pinMode(BUTTON, INPUT_PULLUP);  // initialize pushbutton pin as an input.
 pinMode(FSR,INPUT);
 pinMode(LED1, OUTPUT); 
 pinMode(LED2, OUTPUT);// initialize LED pin as an output 
 Serial.begin(9600);
}

void loop() {
button_val = digitalRead(BUTTON);
int fsrreading = analogRead(FSR);
//fsr_val= analogRead(FSR);
//analogWrite(LED1,fsrreading/4);

Serial.write(fsrreading);
delay(10);

  if (buttonState == HIGH && fsrreading >250) { // if button is pressed (voltage received on pin 2)
    Serial.println(" - Trap");
    digitalWrite(LED1, HIGH);
    digitalWrite(LED2,LOW);// send voltage to LED pin
    
  } else if (buttonState==LOW && fsrreading<250){   //otherwise
    Serial.println(" - No Trap");
    digitalWrite(LED1, LOW);
    digitalWrite(LED2,HIGH);  
  }

}
