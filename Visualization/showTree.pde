class showTree{
  box boxes[] = new box[8];
  button start;
  
  showTree(){
    boxes[0] = new box(220,150,25,25,5);
    boxes[1] = new box(140,260,25,25,3);
    boxes[2] = new box(300,260,25,25,7);
    
    boxes[3] = new box(105,390,25,25,4);
    boxes[4] = new box(175,390,25,25,2);
    
    boxes[5] = new box(260,390,25,25,6);
    boxes[6] = new box(340,390,25,25,8);
    start = new button(365,200,50,40);
  }
  
  void display(){
    background(255);
    textSize(55);
    fill(0);
    text("TREE", 300, 100);
    
    showBranch();
    
    for (int i = 0; i < 7; i++) {
      boxes[i].display1();
      boxes[i].showNum4();
    }
    
  }
  
  void showBranch(){
    line(220,150,140,260);
    line(220,150,300,260);
    line(140,260,105,390);
    line(140,260,175,390);
    line(300,260,260,390);
    line(300,260,340,390);
  }
}
