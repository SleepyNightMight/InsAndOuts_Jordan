//PImage flower;


int timer =500;
int currentTime = 0;
int previousTime =0;

int ellipseY = 0;

void setup(){
size(1080,720);
//flower =loadImage("flower.png);
}
void draw(){
currentTime =millis();
  background(#48a8e9);
  
  if(currentTime -previousTime >timer){
  ellipseY+=20;
  
  previousTime = currentTime;
}
 if(ellipseY >= 0 && ellipseY <=300){
autumn();
 }else {
  winter();
 }
  fill(255);
  ellipse(500, ellipseY, 200, 200);
   
   frameRate(12);
  println(mouseX + " : " + mouseY); 
}

void autumn(){
int x = 200;
int y=230;
int h=90;
int w=275;

int x2=500 ;
int y2=230;
int h2=100 ;
int w2=275; 

fill(#725c42);
rect(x,y,h,w);
rect(x2,y2,h2,w2);

fill(#9e681a);//Fall Grass
  rect(0,500,1080,300);
  
  fill(#702822);//atree2
  ellipse(550,280,200,200);
  ellipse(550,150,150,150);
 
 fill(#DF3908);//atree1
  ellipse(245,280,200,200);
  ellipse(245,150,150,150);
}

void winter(){
int x = 200;
int y=230;
int h=90;
int w=275;

int x2=500 ;
int y2=230;
int h2=100 ;
int w2=275; 

//Snow 
fill(255);
ellipse(350,650,200,100);

fill(#725c42);
rect(x,y,h,w);
rect(x2,y2,h2,w2);

//Snow 
fill(255);
ellipse(350,500,300,100);
ellipse(600,500,200,100);
ellipse(100,500,200,100);

fill(#9e681a);
  rect(0,500,1080,300);
}
void spring(){
//int x = 200;
//int y=230;
//int h=90;
//int w=275;

//int x2=500 ;
//int y2=230;
//int h2=100 ;
//int w2=275; 

//fill(#725c42);
//rect(x,y,h,w);
//rect(x2,y2,h2,w2);

//fill(#45D807);
//  rect(0,500,1080,300);
  
//  fill(#45D807);//atree2
//  ellipse(550,280,200,200);
//  ellipse(550,150,150,150);
 
// fill(#45D807);//atree1
//  ellipse(245,280,200,200);
//  ellipse(245,150,150,150); 
  
  
  //flower.resize(100,80);
 // image(flower,245,50);

}
