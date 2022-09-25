//click  and hold near red dot to make ice cream melt 
PImage hands;
PImage sun;

int grid = 12;
int squareSize;
 
void setup(){
size(1000,800);
hands = loadImage("hands.png");
sun = loadImage("sun.png");
squareSize = width/grid;
}

void draw(){
background(#48a8e9);
for (int w = 0; w < width; w += squareSize) {
    for (int h = 0; h < height; h += squareSize) {
 
      if ((h+w) % 4== 0) {
        fill(175);
        ellipse(h,w,50,50);
      
      } else { 
        fill(126,200,80);
        rect(h,w,50,50);
      }
   
      rect(h, w, squareSize, squareSize);
    }

hands.resize(600,500);
image(hands ,250,150);



 //Cone
 fill(#dba064);
 stroke(#dba064);
  triangle(610,300,390,300,495,540);
   
    strokeWeight(3);
    stroke(#ae581f);
   line(390,302,545,440);
   line(450,447,513,501);
   line(610,300,450,447);
   line(544,438,475,495);

  for (int d = 300; d>0; d-=100) { 
          stroke( #c83f49);
         strokeWeight(5);
          fill (#e9bbb5);
          ellipse (500, 200, d, d);
        }
         fill(#c83f49);
   ellipse(500,200,10,10);

if(mouseX>470&&mouseX<530 && mouseY >170 && mouseY<230){
  if(mousePressed){
    sun.resize(400,400);
image(sun ,850,5);
    
//Melt       
fill(#e9bbb5);
//fill(#f4636f);
noStroke();
ellipse(575,370,90,150);
ellipse(430,325,100,100);
ellipse(500,350,90,120);

}
}

frameRate(12);
  println(mouseX + " : " + mouseY);
}
}
