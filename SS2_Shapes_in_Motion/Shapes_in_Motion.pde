float x, y,x2,y2,x3,y3,x3Move,y3Move, xMove, yMove,x2Move,y2Move;
float move = 0.2;
float move2=0.1;
float r,g,b;
float r2,g2,b2;
float r3,g3,b3;
float r4,g4,b4;

void setup(){
 size(800,800);
 x = width/2;
 y= height/2;
 
 x2 = width/3;
 y2= height/3;
 
 x3 = width/4;
 y3 = height/4;
 
 }


void draw(){
background(255);
fill(r,g,b);
ellipse(x,y,100,100);

fill(r2,g2,b2);
ellipse(x2,y2,100,100);

fill(r3,g3,b3);
ellipse(x3,y3,100,100);

fill(r4,g4,b4);
rect(move, 400, 100, 100);
move =move+0.4;

fill(r4,g4,b4);
rect(200, move2, 100, 100);
move2 =move2+0.9;

x = x+xMove;
y=y+yMove;

x2 = x2+x2Move;
y2 = y2+y2Move;

x3 = x3+x3Move;
y3 = y3+y3Move;

if(x>width || x<0){
xMove = -xMove;
  }
  if(y>width || y<0){
yMove = -yMove;
  }
if(x2>width || x2<0){
x2Move = -x2Move;
  }
  if(y2>width || y2<0){
y2Move = -y2Move;
  }
  if(x3>width || x3<0){
x2Move = -x2Move;
  }
  if(y3>width || y3<0){
y2Move = -y2Move;
  
  }
   println ("x: " + x + " y: " + y + " xMove: " + xMove + " yMove: " + yMove+ "x2: " + x2 + " y2: " + y2 + " x2Move: " + x2Move + " y2Move: " + y2Move);
}

void mousePressed(){
xMove = random(-10,10);
yMove = random(-10,10);

x2Move = random(-10,10);
y2Move= random(-10,10);

x3Move = random(-10,10);
y3Move= random(-10,10);


r = random(0);
g = random(255);
b = random(0);

r2= random(255);
b2= random(0);
g2= random(0);

r3= random(0);
b3= random(0);
g3= random(255);


}
void keyPressed() {
  move=random(2);
  move2=random(2);
  
r4= random(175);
b4= random(175);
g4= random(175);
}

  
 
