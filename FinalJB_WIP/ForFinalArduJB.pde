import processing.serial.*;

Serial myPort;
int fsrreading= 0;

void setup(){
size(500,500);

String[] portList = Serial.list();
printArray(portList);
String portName = Serial.list()[0]; //change the number in the [] for the port you need
myPort = new Serial(this, portName, 9600);


}
void draw(){
if(myPort.available() >0){
fsrreading=myPort.read();

}
background(255);

if( fsrreading <250){
fill(255);
  ellipse(width/2,height/2,200,200);

}else {
fill(255,0,0);
  ellipse(width/2,height/2,200,200);
}
}
