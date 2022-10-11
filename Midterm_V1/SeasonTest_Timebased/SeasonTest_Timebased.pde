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
  autumn();
}
  else if(currentTime2 > timer2){
 winter();
  }
  println(currentTime2);
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
