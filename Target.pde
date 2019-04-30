class Puffle {
  float x;
  float y;
  
  Puffle(float tx, float ty) {
    x = tx;
    y = ty;
  }

void display() {
    pushMatrix();
    translate(x, y);
    fill(255);
    ellipse(x, y, 13, 13);
    popMatrix();
  }
  
  void move(float moveX, float moveY) {
    x = x + moveX;
    y = y + moveY;
  }
  
  float getX() {
    return x;
  }
  float getY() {
    return y;
  }
  
  void setX(float tx) {
    x = tx;
  }
  
  void setY(float ty) {
    y = ty;
  }
}