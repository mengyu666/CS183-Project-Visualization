public class button {
  float x;
  float y;
  int w;
  int h;
  boolean flag =false;
  button(){
    
  }
  
  button(int x, int y, int w, int h) {  //constructor
    this.x =x;
    this.y =y;
    this.w =w;
    this.h =h;
  }

  void display(String str) {
    fill(0, 255, 0);
    rect(x, y, w, h);
    //translate(x,y+25);
    fill(0);
    textSize(20);
    text(str, x, y+26);
  }
  private boolean operation() {
    if (mouseX>x&&mouseX<x+w&&mouseY>y&&mouseY<y+h&&mousePressed) {
     return  true;
    } else {
      return  false;
    }
  
  }
}
