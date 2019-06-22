
class Cell {
  float x, y;
  color cFill = color(225, 240, 247);
  color cStroke = color(175, 190, 193);
  
  Cell(float x_, float y_) {
    x = x_;
    y = y_;
  }
  
  void display() { 
    pushMatrix();
    translate(x, y);
    strokeWeight(3);
    stroke(cStroke);
    fill(cFill);
    rect(0, 0, 50, 50);
    popMatrix();
  }
  
  void vertical() {  // vertical lanes of ice
    pushMatrix();
    translate(x, y);
    
    strokeWeight(6);
    noStroke();
    fill(11, 225, 225, 100);
    rect(0, 0, 50, 50);
    stroke(255);
    line(-25, -25, -25, 25);
    line(25, -25, 25, 25);
    popMatrix();
  }
  void horizontal() {
     pushMatrix();
     translate(x, y);
     
     strokeWeight(6);
     noStroke();
     fill(11, 225, 225, 100);
     rect(0, 0, 50, 50);
     stroke(255);
     line(-25, -25, 25, -25);
     line(25, 25, -25, 25);
     popMatrix();
  }
  
  
}
