class data_structue {
  boolean op1, op2, op3, op4, op5 = false;
  button nb[] = new button[6];//declare button array in data_structue class
  boolean exitflag = false;
  
  data_structue() { //constructor
    //b1 = new button(310, 200, 150, 40);
    //initialize button  array in data_structue class
    for (int i=1; i<6; i++) {
      nb[i] = new button(310, 200+(i-1)*50, 150, 40);
    }
    nb[0] = new button(750, 750, 45, 35);
  }


  void display() {   
    if (op1 == false&&op2 == false&&op3 == false&&op4 == false&&op5 == false) {
      background(255);
      textSize(50);
      text("Welcome To Algorithm", 150, 100);
      //data_structue components button
      nb[1].display("       ARRAY");
      nb[2].display("       STACK");
      nb[3].display("       QUEUE");
      nb[4].display("        TREE");
      nb[5].display("        HASH");
      //exit button
      nb[0].display("EXIT");
      // oh :) a repeat declare 
      op1 = false;
      op2 = false;
      op3 = false;
      op4 = false;
      op5 = false;
      toStart();//show the judge methods
    } else if (op1 ==true&&op2 == false&&op3 == false&&op4 == false&&op5 == false) {
      showArray sa = new showArray();
      sa.display();//call a showArray object to show how array realise
    }else if(op1 ==false&&op2 == true&&op3 == false&&op4 == false&&op5 == false){     
      showStack ss = new showStack();
      ss.display();//call a showStack object to show how stack realise
    }else if(op1 ==false&&op2 == false&&op3 == true&&op4 == false&&op5 == false){
      showQueue sq = new showQueue();
      sq.display();//call a showQueue object to show how queue realise
    }
  }

  void toStart() {
    op1 = nb[1].operation();
    op2 = nb[2].operation();
    op3 = nb[3].operation();
  }
}
