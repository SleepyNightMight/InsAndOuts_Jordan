import processing.serial.*; //imports Serial library from Processing

Serial myPort; // creates object from Serial class
char HEADER = 'H';    // character to identify the start of a message
short LF = 10;        // ASCII linefeed
int[] values = {0, 1};
//color c = color(0, 0, 0);

void setup() {
  size(600, 600);
  
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

  background(255);
  if(values[1] <= 250){
    // c = color(random(255), random(255), random(255));
    fill (255);
  ellipse (width/2, height/2, 250, 250);
    

  }else if (values[1] > 251){
  fill (255,0,0);
  ellipse (500, 400, 250, 250);
  
  }
  
  
}
