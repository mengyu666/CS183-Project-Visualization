class showQueue {
  box boxes[] = new box[9];
  button popButton, pushButton;
  int judge = 0 ;

  showQueue() {  //constructor
    //initialize boxes objects
    for (int i = 0; i < 9; i++) {
      boxes[i] = new box(30+((i-1)*45), 200, 45, 45, i-1);
    }

    //initialize pop and push button
    popButton = new button(580, 200, 50, 40);
    pushButton = new button(660, 200, 50, 40);
  }

  void display() {
    background(255);
    textSize(55);
    fill(0);
    text("QUEUE", 300, 100);
    //queue boundary
    stroke(20);
    line(30, 198, 400, 198);
    //line(28, 198, 28, 247);
    line(30, 247, 400, 247);
    //queue position
    textSize(13);
    fill(0);
    text("front", 13, 193);
    text("tail", 400, 193);
    //show popButton and pushButton
    popButton.display(" POP");
    pushButton.display("PUSH");
    push();
    pop();
    //println(count);
    if (judge == 1 && countQueue2 < 9 && countQueue2 >= 1) {
      // frameRate(0.0001);
      countQueue2 ++;
      // println(count);
      // judge = 0;
      if (countQueue1 == 0) {
        countQueue1 = 1;
      }
    }
    if (judge == 2&& countQueue1 >= 1 && countQueue1 <= 8 && countQueue2 > 1) {
      //frameRate(0.0001);
      countQueue1 ++;
      //judge = 0;
    }
    // println(frameRate);
    frameRate(8); //adjust the frameRate of the video
    //debug
    //println(count);
    if (countQueue1 == 9&&countQueue2 == 9) {
      countQueue1 = 1;
      countQueue2 = 1;
    }
    //i is the actual index in boxes array, to decide which box is showed
    //j is the index in queue
    for (int i = countQueue1,j = countQueue1; j < countQueue2&&countQueue2 != 10&&i < countQueue2&&countQueue2 != 10; i++,j++) {
      if (i == 0) {continue;}
      boxes[i].display();
      boxes[i].showNum3(j-countQueue1);
    }
    //println("countQueue1="+countQueue1);
    //println("countQueue2="+countQueue2);
  }

  //push operation
  void push() {
    if (pushButton.operation()) {
      judge = 1;
    }
  }

  //pop operation
  void pop() {
    if (popButton.operation()) {
      judge = 2;
    }
  }
}
