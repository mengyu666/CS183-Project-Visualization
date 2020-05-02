public class binaryBackgound {
  float y;
  float speed;
  float x1, x2;
  boolean mouse;
  
  binaryBackgound() { //constructor
    y = 0;
    speed = random(5);
  }

  void display(int i) {
    textSize(13);
    noStroke();
    fill(0, 255, 0);
    text("1", i*3, y);
    text("0", i*4, y);
  }

  void move() {
    y += speed;
    if (y > width+20) y = -20;
  }
}
