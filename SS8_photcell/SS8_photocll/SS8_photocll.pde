import processing.serial.*;

Serial myPort;//creates object from Serial class
int value = 0;
float move = 3;

void setup(){
size(1000,900);
String[] portList =Serial.list();
printArray(portList);
String portName =Serial.list()[0];
myPort= new Serial(this,portName,9600);
}

void draw(){
if(myPort.available() >0){
value = myPort.read();

}

 
  if (value > 100 && value <= 255) {
   background(#48a8e9);
  } else if(value <100 && value >=50)  {
   background(#191970);
  }
 
 fill(#f9d71c);
  ellipse(500, move, 300, 300);
  move = move + 1;
 
 if(value <50 && value >=0){
 move = 0;
 }
 
}
//void keyPressed(){
//if(value <50 && value >=0){
// move = 0;
// }

//}
