//Star Array from Charlie McDowell https://openprocessing.org/sketch/41149/#

//Click mouse to change to random shade of green during spring 
//Press any key to reset time of day and season 
//Hover mouse near top of left mountain during winter to show snowpeaks 
//Hover mouse below horizon at night to show stars 

PImage flower;
PImage flower2;
int startTime=millis();
int timer2= 2000; // 2 sec for color change
int timer3=14000; //14 sec color change 
int timer4 = 7000;//7 sec 
int currentTime = 0;
//boolean button=false;

float easing =.3;

float r= 0;
float g= 255;
float b= 0;
float targetR = r;
float targetG = g;
float targetB = b;

float r2= 0;
float g2= 255;
float b2= 0;

float move = 3;

int[] starX = new int[1000];
int[] starY = new int[1000];
color[] starColor = new color[1000];
int starSize = 3; // the size of the twinkling stars

void setup(){
size(1080,900);
flower =loadImage("flower.png");
flower2 =loadImage("flower2.png");

 for (int i = 0; i < starX.length; i++) {
    starX[i] =(int)random(width);
    starY[i] = (int)random(600);
    starColor[i] = color((int)random(100,255));
 }
}

void draw(){
currentTime=millis()-startTime;
  background(#48a8e9);
  println("Morning");
 
if(currentTime>timer4){
  background(#EA6D0C); 
  println("Sunset");
} 
if(currentTime>timer3){
  background(#191970); //night
  println("Night");
  
  if(mouseY>600){
  aster();
  }
} 
//prints amount of time passed(ms)
println("Time passed = "+  currentTime);

 
 fill(#f9d71c);
  ellipse(500, move, 300, 300);
  move = move + 2;
  
 if(move >= 0 && move <=250){
spring();
println("Spring");
 }else if (move >= 251 && move<=500)  {
  autumn();
  println("Autumn");
 }else{
   winter();
   println("Winter");
  }
  //smoothens color transition during spring 
   float d_r = targetR - r;
  r += d_r * easing;
  
  float d_g = targetG - g;
  g += d_g * easing;
  
  float d_b = targetB - b;
  b += d_b * easing;
 
   //tracks and prints position of move on yAxis
 println("Move = " + move);
 
  
   frameRate(12);
  println(mouseX + " : " + mouseY); 
}
