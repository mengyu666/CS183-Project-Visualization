// box class which show the boxes
class box {
  float x;
  float y;
  int w;
  int h;
  int num;
  int showNum;

  box(int x, int y, int w, int h, int num) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.num = num;
    showNum = x/20;  //specific for showArray, can be impove?
  }
  void display() {
    fill(100, 100, 255);
    stroke(10);
    rect(x, y, w, h);
    textSize(13);
  }
  void display1() {
    fill(255);
    stroke(10);
    ellipse(x, y, w, h);
    textSize(13);
  }
  
  //specific for showArray, can be impove?
  void showNum1(float tempty){
    
    fill(0, 0, 0);
    textSize(13);
    text(num, x+20, y+58);//show index number
    textSize(25);
    text(showNum, x+7, tempty);//show actual nmber
  }
  
  //specific for showStack, can be impove?
  void showNum2(){
    fill(0, 0, 0);
    textSize(13);
    text(num, x+20, y+58);//show index number
    textSize(25);
    text(showNum, x+10, y+35);//show actual nmber
  }
  
  //specific for showQueue, can be impove?
  void showNum3(int indexNum){
    fill(0, 0, 0);
    textSize(13);
    text(indexNum, x+20, y+58);//show index number
    textSize(25);
    text(showNum, x+10, y+35);//show actual nmber
  }
  
  //specific for showTree, can be impove?
  void showNum4(){
    fill(0, 0, 0);
    textSize(13);
    
    text(num, x-3, y+4);//show number
    textSize(25);
   
  }
  
}
