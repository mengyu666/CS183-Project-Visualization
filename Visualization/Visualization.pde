binaryBackgound[] binaryBackgounds = new binaryBackgound[200];//declare binaryBackgounds array
data_structue ds = new data_structue();//a data_structue object
button b1, b2;// data structue button and algorithm button

boolean op1,op2 ;// declare two button object 
float ty = 600;// the y for boxes to move
PImage arraycode;
int countStack = 0;//showStack tool 
int countQueue1 = 1, countQueue2 = 1;//showStack tool 

void setup() {
  size(800, 800);//the screen size for the backgound
  
  //initialize binaryBackgound in binaryBackgounds
  for (int i=0; i<binaryBackgounds.length; i++) {
    binaryBackgounds[i] = new binaryBackgound();
  }
  
  //render code picture for evey data_structure or algorithm
  arraycode = loadImage("array.png");
}

void draw() {
  if (op1 == false&&op2 == false) { //state the main page
    background(100);
    
    //surface.setTitle("Hello World!");
    //surface.setResizable(true);
    //surface.setLocation(100, 100);
    
    // call binaryBackgound class 
    for (int i = 0; i<binaryBackgounds.length; i++) {
      binaryBackgounds[i].move();
      binaryBackgounds[i].display(i);
    }
    op1 = false;
    op2 = false;
    toStart();//display the two button which start the program
    
  } else if (op1 == true&&op2 == false) { //display the data structure page    
    ds.display(); // call the da(data structure) object  
    op2 = false;
    
  } else if (op1 == false&&op2 == true) { //display the algorithm page
    background(255);
    textSize(50);
    text("Algorithm", 250, 250);
    op1 = false;
    
  }
}
// start the program
void toStart() {
  b1 = new button(110, 320, 150, 40);
  b1.display(" Data Structure");
  op1 = b1.operation();// call the data structure page button

  b2 = new button(410, 380, 150, 40);
  b2.display("    Alogrithm");
  op2 = b2.operation();// call the algorithm page button
}
