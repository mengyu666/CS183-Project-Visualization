class showArray {
  box boxes[] = new box[6];
  //button start = new button(400,400,40,40);
  
  showArray() {  //constructor
    for (int i = 0; i < 6; i++) {
      boxes[i] = new box(30+(i*55), 200, 45, 45, i); // x,y,w,h the index for the box
    }
  }

  void display() {
    background(255);
    textSize(55);
    fill(0);
    text("ARRAY", 300, 100);
    textSize(18);
    text("declare a continus memories in computer", 360, 230);
    fill(0, 255, 0);
    text("code showing below :", 360, 270);
    //show Java code
    pushMatrix();
    image(arraycode, 380, 280, 400, 220);
    popMatrix();
    //boxes, and number move to array
    for (int i = 0; i < 6; i++) {
      boxes[i].display();
      boxes[i].showNum1(ty);
    }   
    if (ty > 235) {
      ty = ty - 1.5;
    }
  }
}
