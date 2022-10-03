int[] weather = new int[4];
int positionWeather = 0;
PImage cloudy;
PImage snowflake;
PImage thunder;
PImage sun;

void setup(){
size(800,800);
imageMode(CENTER);

cloudy = loadImage("cloudy.png");
thunder = loadImage("thunder.png");
snowflake = loadImage("snowflake.png");
sun = loadImage("sun.png");
}

void draw(){
background(255);
weather[0]=1;
weather[1]=2;
weather[2]=3;
weather[3]=4;

if(positionWeather == 1){
image(cloudy,height/2,width/2);
}
else{
 image(snowflake,height/2,width/2);
}

}
void cloud(int x,int y){
cloudy.resize(100,80);
image(cloudy,x,y);
}
void sun(int x,int y){
image(sun,x,y);
}

void thunderstorm(int x,int y){
image(thunder,x,y);
}
void snow(int x,int y){
  
  image(snowflake,x,y);
}

void mousePressed(){
if(positionWeather == weather.length-1){
  positionWeather =0;
}
else {
positionWeather++;
}

}
