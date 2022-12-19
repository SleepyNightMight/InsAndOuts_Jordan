import processing.serial.*; //imports Serial library from Processing

Serial myPort; 
char HEADER = 'H';
short LF = 10;        
int[] values = {0, 1};

PImage Scroll;
PImage dwall;
PImage coins;
PImage Skull;
PImage chest;
String quote = "Relieve the Earth's \n burden and \n reap the Earth's bounty ";
//   \n

void setup() {
  size(600, 600);
  imageMode(CENTER);
  textAlign(CENTER);
  textSize(30);
//  String[] fontList = PFont.list();
//printArray(fontList);
  
  Scroll = loadImage("Scroll.png");
  dwall =loadImage("dwall.jpg");
  coins= loadImage("coins.png");
  Skull=loadImage("Skull.png");
  chest=loadImage("chest.png");
  
  
  String[] portList = Serial.list();
  printArray(portList); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 115200);
}

void draw() {
  if ( myPort.available() > 0) { 
    String message = myPort.readStringUntil(LF);
    
    if(message != null) {
      print(message);
      String [] data  = message.split(","); // Split the comma-separated message
      if(data[0].charAt(0) == HEADER) {       // check for header character in the first field
        for( int i = 1; i < data.length-1; i++) { // skip the header and terminating cr and lf
          try{
            values[i-1] = Integer.parseInt(data[i]);
          }
          catch (NumberFormatException e){
            return;
          }
          println("Value" +  i + " = " + values[i-1]);  //Print the value for each field
        }
        println();
      }
    }
  }

 // background(255);
  dwall.resize(600,670);
  image(dwall,width/2,height/2);
 
  image(Scroll,width/2,height/2);
  fill(0);
   text(quote,width/2,250);
   
   
   chest.resize(100,100);
   image(chest,width/2,150);
   
 
  
  if(values[0] < 500 && values[0]>0 ){
    // c = color(random(255), random(255), random(255));
   // fill (255);
  //ellipse (width/2, height/2, 250, 250);
  coins.resize(100,100);
  image(coins,width/2,450);
    
//&& values[1]==0
  }else if (values[0] >600 ){
 /* fill (255,0,0);
  ellipse (500, 400, 250, 250);
  */
     Skull.resize(100,100);

    image(Skull,width/2,450);
  }
}
