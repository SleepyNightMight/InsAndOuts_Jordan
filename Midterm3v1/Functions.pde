
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

//Branches 
//stroke(#725c42); 
//strokeWeight(5);
 line(200,483,163,442);
line(285,456,302,447);

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
   if(move>500 && mouseX>=0 && mouseX<250 && mouseY>140&&mouseY<400){
    fill(255);//SnowPeaks
  triangle(48,260,178,260,100,140);
  triangle(1000,260,1000,270,1250, 600);
 
}
fill(255);
 triangle(1000,260,1100,260,1050, 140);
}

void aster(){
if(currentTime>timer3&& mouseY >=600){
   stroke(0);
  strokeWeight(1);
  for (int i = 0; i < starX.length; i++) {
    fill(random(50,255)); // makes them twinkle
    if (random(10) < 1) {
      starColor[i] = (int)random(100,255);
    }
    fill(starColor[i]);
    
    ellipse(starX[i], starY[i], starSize, starSize);
  }
  
} 
}
void mousePressed() {
  targetR= random (0);  
  targetG= random (100, 200);
  targetB= random (0);
   
  r2= random (0);  
  g2= random ( 90,255);
  b2= random (0);   

/*   
 for (int i = 0; i <rains.length; i++) {
 rains[i].move();
 rains[i].display();
 }
 */
}
void keyPressed(){
if(move>=1){
move = 0;
currentTime=0;
startTime=millis();
}

}
