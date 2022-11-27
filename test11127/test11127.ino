const int buttonPin = 8;   //placeholder of magnetic sensor
const int fsr= A0;
int fsrreading;

const int LED1 =  11;      // creates variable called LED and assigns value of 13
const int LED2=10;

// sets up integer variables that will change over time, assigns initial values
int LEDState = LOW;         // tracks current state of LED pin
int buttonState = LOW;             // tracks current reading of button pin
int lastButtonState = LOW;   // tracks previous reading of button pin


// setup runs once at startup
void setup() {
  pinMode(buttonPin, INPUT_PULLUP);  // initialize pushbutton pin as an input.
  pinMode(LED1, OUTPUT); 
  pinMode(LED2, OUTPUT);// initialize LED pin as an output
}

// loop runs infinitely
void loop() {
  Serial.print("FSR READING: ");
int fsrreading = analogRead(fsr);// Read the FSR pin and store the output as fsrreading:
  Serial.println(fsrreading);
delay(10);
  
  buttonState = digitalRead(buttonPin); // read value of buttonPin and store it in buttonState
  delay (10); //small delay for physical button debouncing, to increase accuracy

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
