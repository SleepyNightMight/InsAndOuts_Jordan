//Not feeling it
class Rain {
float x,y;
float speed;
color c;
float r;

Rain(){
 r = random(3,8);
x=random(width);
y=-r*4;
speed = random(1,5);
c=color(50,100,150);
}
void move(){
y += speed;
}
void display(){
fill(c);
noStroke();
for (int i = 2; i < r; i++) {
 ellipse(x, y+i*4, i*2, i*2);
 }

}
}
