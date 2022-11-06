const int buttonPin=2;
const int LED =10;
const int LED2 =11;
const int LED3 =12;
const int LED4 =13;

int LEDState = LOW;
int buttonState=HIGH;
int lastButtonState=HIGH;

unsigned long previousMillis=0;
int numStates = 3;
const unsigned long interval = 950;
const unsigned long interval2 = 950;

const int fadeInterval =50;
int fadeCounter = 0;

bool blinkState=false;

void setup() {
 pinMode(LED,OUTPUT);
  pinMode(LED2,OUTPUT);
  pinMode(LED3,OUTPUT);
  pinMode(LED4,OUTPUT);
  
 pinMode(buttonPin,INPUT); 
}
void loop() {
  unsigned long currentMillis = millis();
  
checkButton();

if(LEDState == 1){
  if(currentMillis - previousMillis >= interval){
   previousMillis =currentMillis;
   if(blinkState==true){
    digitalWrite(LED,HIGH);
    digitalWrite(LED2,LOW);
    digitalWrite(LED3,HIGH);
    digitalWrite(LED4,LOW);
   }
   else{
    digitalWrite(LED,LOW);
    digitalWrite(LED2,HIGH);
    digitalWrite(LED3,LOW);
    digitalWrite(LED4,HIGH);
    }
    blinkState = !blinkState;
    
    }
} else if (LEDState == 2 ){
  if(currentMillis - previousMillis >= interval2){
   previousMillis =currentMillis;
   if(blinkState==true){
    
     analogWrite(LED2, 64);
    digitalWrite(LED,LOW);
    // analogWrite(LED4,64);
    digitalWrite(LED3,LOW);
   }
   else{
   analogWrite(LED2, 0);
    digitalWrite(LED,HIGH);
    //analogWrite(LED4,0);
    digitalWrite(LED3,HIGH);
    }
    blinkState = !blinkState;
    
    }
  
  }else if(LEDState == 3 ){
    if(currentMillis - previousMillis >= fadeInterval){
   previousMillis =currentMillis;

analogWrite(LED,fadeCounter);
analogWrite(LED2,fadeCounter);
//analogWrite(LED3,fadeCounter);
//analogWrite(LED4,fadeCounter);

if(blinkState == LOW){
  fadeCounter += 5;
 if (fadeCounter >= 255){
  blinkState = LOW;
  }
}else{
  fadeCounter -= 5;
  if(fadeCounter <= 0){
    blinkState =LOW;
    }
  }
   
  }
  } else {
  digitalWrite(LED,LOW);
  digitalWrite(LED2,LOW);
  digitalWrite(LED3,LOW);
  digitalWrite(LED4,LOW);
  blinkState=false;
    }
  }
void checkButton(){
  buttonState =digitalRead(buttonPin);
delay(10);
  if(buttonState == LOW && lastButtonState==HIGH){
    LEDState++;
    if(LEDState > numStates){
      LEDState = 0;
      }
    }
    else{
      }
lastButtonState = buttonState;
  
  }
