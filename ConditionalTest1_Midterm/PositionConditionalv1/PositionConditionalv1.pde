int timer =500;
int currentTime = 0;
int previousTime =0;

int ellipseY = 0;

void setup(){
size(1080,720);
}
void draw(){
currentTime =millis();
  
background(#48a8e9); //Day 
//Grass
fill(#7CFC00);
rect(0,500,1080,300);

if(currentTime -previousTime >timer){
  ellipseY+=20;
  
  previousTime = currentTime;

  frameRate(12);
  println(mouseX + " : " + mouseY); 
}

if(ellipseY >= 330){
  background(#191970); //night
  
} 

  fill(#FDB813);
  ellipse(500, ellipseY, 200, 200);
  
  fill(#7CFC00);
rect(0,500,1080,300);

if(ellipseY >= 330){
   fill(#efa311);
rect(0,500,1080,300);}
}
