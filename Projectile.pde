class Projectile {
  float x = 0;
  float y = 0;
  
  Projectile(float tx, float ty) {
    x = tx;
    y = ty;
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