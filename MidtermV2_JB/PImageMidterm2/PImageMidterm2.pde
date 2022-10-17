//Had an Issue with positon based time of day change(ellispe dissappears from scene when it changes)
//Tried time based 
//ellipse movement less choppy(used move instead of ellipseY)

//Click mouse to change to random shade of green during spring 


PImage flower;
PImage flower2;

int timer2= 2000; // 2 sec for olor change
int timer3=14000; //14 sec color change 
int timer4 = 7000;//7 sec 
int currentTime2=0;

//int ellipseY = 0;

float r= 0;
float g= 255;
float b= 0;
float r2= 0;
float g2= 255;
float b2= 0;

float move = 3;


void setup(){
  //frameRate = 120;
size(1080,900);
flower =loadImage("flower.png");
flower2 =loadImage("flower2.png");
}
void draw(){
//currentTime =millis();
currentTime2 =millis();
  background(#48a8e9);
  


if(currentTime2>timer4){
  background(#EA6D0C); 
} 
if(currentTime2>timer3){
  background(#191970); //night
  
} 
println(currentTime2);

 
 fill(#f9d71c);
  ellipse(500, move, 300, 300);
  move = move + 2;
  
 if(move >= 0 && move <=250){
spring();
 }else if (move >= 251 && move<=500)  {
  autumn();
 }else{
   winter();
  }
  
   frameRate(12);
  println(mouseX + " : " + mouseY); 
}

void autumn(){
int x = 200;
int y=425;
int h=85;
int w=275;

int x2=500 ;
int y2=425;
int h2=80 ;
int w2=275; 

int x3=800;
int y3=425;
int h3=85;
int w3=250; 

mountain();

fill(#725c42);
rect(x,y,h,w);
rect(x2,y2,h2,w2);
rect(x3,y3,h3,w3);

fill(#9e681a);//Fall Grass
  rect(0,600,1080,300);
  //Autumn Leaves
  fill(#702822);
  ellipse(540,425,200,200);
  ellipse(540,290,150,150);
  
 fill(#DF3908);
 ellipse(850,425,200,200);
ellipse(850,290,150,150);

ellipse(245,425,200,200);
ellipse(245,290,150,150);
}

void winter(){
int x = 200;
int y=425;
int h=85;
int w=275;

int x2=500 ;
int y2=425;
int h2=80 ;
int w2=275; 

int x3=800;
int y3=425;
int h3=85;
int w3=250; 
mountain();

//Snow 
fill(255);
ellipse(350,650,200,100);

fill(#725c42);
rect(x,y,h,w);
rect(x2,y2,h2,w2);
rect(x3,y3,h3,w3);

//Snow 
fill(255);
ellipse(100,600,200,100);
ellipse(350,600,300,100);
ellipse(600,600,200,100);
ellipse(900,600,200,100);


fill(#9e681a);
  rect(0,600,1080,300);
}
void spring(){
int x = 200;
int y=425;
int h=85;
int w=275;

int x2=500 ;
int y2=425;
int h2=80 ;
int w2=275; 

int x3=800;
int y3=425;
int h3=85;
int w3=250; 
mountain();

fill(#725c42);
rect(x,y,h,w);
rect(x2,y2,h2,w2);
rect(x3,y3,h3,w3);

 flower.resize(100,80);
  image(flower,700,522);
  flower2.resize(100,80);
  image(flower2,400,522);

fill(#45D807);
  rect(0,600,1080,300);
  //strokeWeight(0);
  //fill(#45D807);//atree2
    fill(r,g,b);
 ellipse(540,425,200,200);
  ellipse(540,290,150,150);
  
  //fill(#7CFC00);
  fill(r,g,b);
ellipse(850,425,200,200);
ellipse(850,290,150,150);

//fill(#7CFC00);
  fill(r2,g2,b2);
ellipse(245,425,200,200);
ellipse(245,290,150,150);
  
}
void mountain(){
fill(175);
  triangle(-100, 600, 100, 140, 400, 600);
  triangle(870, 600, 1050, 140, 1250, 600);

}
void mousePressed() {
  r= random (0);  
  g= random (100, 200);
  b= random (0);
  r2= random (0);  
  g2= random ( 90,255);
  b2= random (0);
}
