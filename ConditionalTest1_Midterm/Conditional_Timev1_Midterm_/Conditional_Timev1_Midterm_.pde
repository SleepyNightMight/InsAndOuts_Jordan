int timer1 =1000; // 1sec for descent
int timer2= 2000; // 2 sec for olor change
int timer3=14000; //14 sec color change 
int timer4 = 7000;//7 sec 

int currentTime1 = 0;
int currentTime2=0;
int previousTime =0;

int ellipseY = 0;

void setup(){
size(1080,720);
}
void draw(){
currentTime1 =millis();
currentTime2 =millis();  
background(#48a8e9); //Day 
//Grass
fill(#7CFC00);
rect(0,500,1080,300);

if(currentTime1-previousTime >timer1){
  ellipseY+=20;
  
  previousTime = currentTime1;

  frameRate(12);
  println(mouseX + " : " + mouseY); 
}

if(currentTime2>timer4){
  background(#EA6D0C); 
} 


if(currentTime2>timer3){
  background(#191970); //night
  
} 


  fill(#FDB813);
  ellipse(500, ellipseY, 200, 200);
  
  fill(#7CFC00);
rect(0,500,1080,300);

if(currentTime2 > timer3){
   fill(#efa311);
rect(0,500,1080,300);}
  else if(currentTime2 > timer2){
   fill(#7CFC00);
rect(0,500,1080,300);
  }
  println(currentTime2);
}
