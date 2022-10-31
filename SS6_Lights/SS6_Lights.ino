const int buttonPin = 2; 

const int LED1= 12;  
const int LED2= 13; 
const int LED3= 11; 
const int LED4= 10; 

int buttonState = 0; 



void setup() {
  pinMode(LED1, OUTPUT);    
  pinMode(LED2, OUTPUT);  
  pinMode(LED3, OUTPUT); 
  pinMode(LED4, OUTPUT);   
  pinMode(buttonPin, INPUT);  
}

void loop() {
   buttonState = digitalRead(buttonPin);    // read the state of the pushbutton value
  delay (10); //small delay for debouncing, to increase accuracy

if (buttonState == HIGH) { // if button is pressed (voltage received on pin 2)
   digitalWrite(LED1, HIGH);   
  delay(500);      

  digitalWrite(LED2, HIGH);   
  delay(150);  
  
  digitalWrite(LED3, HIGH);   
  delay(175); 
  
   digitalWrite(LED4, HIGH);   
  delay(460);       
  } else {   //otherwise
   digitalWrite(LED1, LOW);    
  delay(250);
  
  digitalWrite(LED2, LOW);    
  delay(50); 
  
  digitalWrite(LED3, LOW);    
  delay(350);   
  
  digitalWrite(LED4, LOW);    
  delay(150);        
  }
  
  
  
   
  
  
  
  
  
         
                  
}
