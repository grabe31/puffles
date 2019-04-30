class Pirate {
  float x, y, slopeX, slopeY, slopeConstrainX, slopeConstrainY;
  float rotate = 0;
  
  Pirate(float tx, float ty, float trotate) {
    x = tx;
    y = ty;
    rotate = trotate;
  }
  
  void display() {
    pushMatrix();
    translate(x, y);
    
  for(int i = 0; i < puffles.length; i++) {   
    slopeX = 0.05 * (puffles[0].getX() - x);
    slopeXconstrain = constrain(slopeX, -6, 6);
    
    slopeY = 0.05 * (puffles[0].getY() - y);
    slopeYconstrain = constrain(slopeY, -6, 6);
  }
  
    rectMode(CENTER);
    
    fill(100);
    rect(x, y, 40, 40);
    popMatrix();
  }
  
float getX() {
  return x;
}
float getY() {
  return y;
}

float getSlopeX() {
  return slopeX;
}
float getSlopeY() {
  return slopeY;
}

void setX(float tx) {
  x = tx;
}

void setY(float ty) {
  y = ty;
}

}