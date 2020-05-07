class showStack{
  box boxes[] = new box[8];
  button popButton, pushButton;
  int judge = 0 ;
  
  showStack(){  //constructor
  //initialize boxes objects
    for (int i =0; i<8; i++) {
      boxes[i] = new box(30+(i*45), 200, 45, 45, i);
    }
    
    //initialize pop and push button
    popButton = new button(580,200,50,40);
    pushButton = new button(660,200,50,40);
    
  }
  
  void display(){
    background(255);
    textSize(55);
    fill(0);
    text("STACK", 300, 100);
    //stack boundary
    stroke(20);
    line(30,198,400,198);
    line(28,198,28,247);
    line(30,247,400,247);
    //show stack position
    textSize(13);
    fill(0);
    text("bottom", 13, 193);
    text("top", 400, 193);  
    //show popButton and pushButton
    popButton.display("POP");
    pushButton.display("PUSH");
    push();
    pop();
    
    if(judge == 1 && countStack < 8){
      countStack ++;
    }
    if(judge == 2 && countStack > 0){
      countStack --;
    }
    //println(countStack);
   // println(frameRate);
    frameRate(8); //adjust the frameRate of the video
    //debug
    //println(count);
    for (int i = 0; i < countStack&&countStack != 9; i++) {
      boxes[i].display();
      boxes[i].showNum2();
    }
  }
  
  //push
  void push(){
    if(pushButton.operation()){
      judge = 1;
    }
  }
  
  //pop
  void pop(){
    if(popButton.operation()){
      judge = 2;
    }
  }

}
