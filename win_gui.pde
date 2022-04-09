import controlP5.*; //import ControlP5 library
import processing.serial.*;

Serial port;

ControlP5 cp5; //create ControlP5 object

void setup(){ //Same as setup in arduino
  
  size(500, 500);                          //Window size, (width, height)
  port = new Serial(this, "COM11", 9600);   //Change this to your port
  
  cp5 = new ControlP5(this);
  
  cp5.addButton("N")  //The button
    .setPosition(150, 100)  //x and y coordinates of upper left corner of button
    .setSize(50, 50)      //(width, height)
  ;     
  
  cp5.addButton("E")  //The button
    .setPosition(50, 160)  //x and y coordinates of upper left corner of button
    .setSize(50, 50)      //(width, height)
  ;     
cp5.addButton("S")  //The button
    .setPosition(150, 220)  //x and y coordinates of upper left corner of button
    .setSize(50, 50)      //(width, height)
  ;     
cp5.addButton("W")  //The button
    .setPosition(250, 160)  //x and y coordinates of upper left corner of button
    .setSize(50, 50)      //(width, height)
  ;  
  cp5.addButton("NE")  //The button
    .setPosition(50, 100)  //x and y coordinates of upper left corner of button
    .setSize(50, 50)      //(width, height)
  ;     
cp5.addButton("ES")  //The button
    .setPosition(50,220)  //x and y coordinates of upper left corner of button
    .setSize(50, 50)      //(width, height)
  ; 
  cp5.addButton("WS")  //The button
    .setPosition(250, 220)  //x and y coordinates of upper left corner of button
    .setSize(50, 50)      //(width, height)
  ;     
cp5.addButton("NW")  //The button
    .setPosition(250, 100)  //x and y coordinates of upper left corner of button
    .setSize(50, 50)      //(width, height)
  ;  
   
cp5.addButton("stop")  //The button
    .setPosition(150, 160)  //x and y coordinates of upper left corner of button
    .setSize(50, 50)      //(width, height)
  ;  

}

void draw(){  //Same as loop in arduino

  background(150, 0 , 150); //Background colour of window (r, g, b) or (0 to 255)
    
}

void N(){
  
  port.write('A');
  
}
void S(){
  
  port.write('B');
  
}
void W (){
  
  port.write('C');
  
}
void E(){
  
  port.write('D');
}
  
 
void NE(){
  
  port.write('E');
  
}
void ES(){
  
  port.write('F');
  
}
void WS(){
  
  port.write('G');
}
  void NW(){
  
  port.write('H');
  
}

void stop(){
  
  port.write('I');
  
}
