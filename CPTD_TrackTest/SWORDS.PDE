class Sword {

  float x, y;

  Sword(float tx, float ty) {
    x = tx;
    y = ty;
  }

  void display() {
    pushMatrix();

    translate(width/2 + x, height/2 + y);
    rotate(0.003*PI* millis());
    rectMode(CENTER);
    stroke(140);
    fill(220);

    rect(0, 0, 5, 60, 4);
    fill(139, 69, 19);
    rect(0, 42, 6.5, 35); 

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
