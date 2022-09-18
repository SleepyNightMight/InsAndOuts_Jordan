//Celestial Cradle by Jordan Bowen

void setup(){
size(1080,720);
//background(#48a8e9);Day 
background(#191970); //Night

//Grass
fill(#7CFC00);
rect(0,500,1080,300);

//Celestial
//fill(#FDB813);//Sun
//fill(#d8d6cb);Moon1 
fill(255);//Moon2
//ellipse(500, 150, 200, 200);size1
ellipse(500, 170, 300, 300);//size 2

fill(#aca8a9);
// triangle (x1, y1, x2, y2(bottom), x3, y3(top);
//Mountains1&2
stroke(90);
triangle(500, 500, 200, 500, 350, 200);
triangle(800, 500, 500, 500, 650,200);
//inFront/Mountain3
stroke(10);
triangle(600, 500, 400, 500, 500, 200);
//point(800,700);nothing
}
