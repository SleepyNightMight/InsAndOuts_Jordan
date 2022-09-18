PImage brownleaf;
PImage redleaf;
PImage yellowleaf;
float fall = 35;
String quote ="Here comes Autumn!";


void setup(){
size (1080,720);
background(#48a8e9);
imageMode(CENTER);
textAlign(CENTER);
textSize(88);

brownleaf = loadImage("brownleaf.png");
redleaf = loadImage("redleaf.png");
yellowleaf = loadImage("yellowleaf.png");
}


void draw(){
//grass
fill(#7CFC00);
rect(0,500,1080,300);

//Trees
fill(#725c42);
rect(200,230,90,275);
rect(500,230,100,275);
rect(800,230,100,275);

//Leaves
noStroke();

fill(#7CFC00);
ellipse(245,280,200,200);
ellipse(245,150,150,150);
ellipse(245,50,100,100);

fill(#7CFC00);
ellipse(550,280,200,200);
ellipse(550,150,150,150);
ellipse(550,50,100,100);

fill(#7CFC00);
ellipse(850,280,200,200);
ellipse(850,150,150,150);
ellipse(850,50,100,100);

if(mousePressed){
  fill(#9e681a);//Fall Grass
  rect(0,500,1080,300);
 
  
  fill(#725c42);
  rect(200,230,90,275);
  rect(500,230,100,275);
  rect(800,230,100,275);

  fill(#DF3908);//atree1
  ellipse(245,280,200,200);
  ellipse(245,150,150,150);
  ellipse(245,50,100,100);

  brownleaf.resize(100,80);
  image(brownleaf,245,50);

  fill(#702822);//atree2
  ellipse(550,280,200,200);
  ellipse(550,150,150,150);
   ellipse(550,50,100,100);

  redleaf.resize(100,80);
  image(redleaf,550,50);

  fill(#efa311);//atree3
  ellipse(850,280,200,200);
  ellipse(850,150,150,150);
  ellipse(850,50,100,100);

  yellowleaf.resize(100,80);
  image(yellowleaf,850,50);

if(keyPressed){
  //brownleaf.resize(100,80);
  image(brownleaf,245,fall);

 // yellowleaf.resize(100,80);
  image(yellowleaf,850,fall);

 // redleaf.resize(100,80);
  image(redleaf,550,fall);

if(fall < 500){
  fall++;
}
else{
  text(quote,500,600);
}
}
else {
  fall = 0;
}
}
println("fall: " + fall);
}
