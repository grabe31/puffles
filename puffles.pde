class Puffle {
  float x, y, xspeed, yspeed;
  float xPos[] = { 275, 275, 525, 525, 775, 775, 0 };
  float yPos[] = { 225, 75, 75, 525, 525, 375, 0 };
  int moves[] = { 3, 1, 4, 1, 3, 2 };
  int posOrder_ = 0;    // needs to constrain
  int posOrder;    // actual count value for x and y positions of the track
  float offset;
  float speed;    // making the speed work off of the radius
  color c;
  float d;
  float rotate;
  
  Puffle(float tx, float ty, float td, float tspeed, color tc) {
    x = tx;
    y = ty;
    d = td;
    speed = tspeed;
    c = tc;
    
    x = width + 50;
    y = 225;
    posOrder = constrain(posOrder_, 0, 5);
    speed = 2.8;
    offset = 3;
    moveLeft();
  }

  void display() {
    pushMatrix();
    translate(x, y);
    rotate(rotate);
    noStroke();
    fill(c);
    ellipse(0, 0, d, d);
    fill(255);
    arc(-d/5, d/4, 15*d/40, 13*d/40, 0, PI+QUARTER_PI, CHORD);
    arc(d/5, d/4, 15*d/40, 13*d/40, -QUARTER_PI, PI, CHORD);
    fill(0);
    ellipse(-d/8, 3*d/10, d/20, d/10);
    ellipse(d/8, 3*d/10, d/20, d/10);
    stroke(0);
    fill(c);
    strokeWeight(.5);
    curve(3*d/4, d, -d/10, -d/20, 0, 0, -3*d/4, d);
    curve(3*d/4, d, 0, 0, d/10, -d/40, -d/4, 3*d/2);
    //curve(-100, 0,
    popMatrix();
  }

  void update() {
    x += xspeed;
    y += yspeed;
    println(xspeed);
  }

  void moveRight() {  // 1
    xspeed = speed;
    yspeed = 0;
    rotate = 1.5 * PI;
  }
  void moveLeft() {   // 2
    xspeed = -speed;
    yspeed = 0;
    rotate = 0.5 * PI;
  }
  void moveUp() {     // 3
    xspeed = 0;
    yspeed = -speed;
    rotate = PI;
  }
  void moveDown() {   // 4
    xspeed = 0;
    yspeed = speed;
    rotate = 0;
  }

  void followTrack() {
    update();


    if (  (x >= xPos[posOrder] - offset && x <= xPos[posOrder] + offset)
      && (y >= yPos[posOrder] - offset  && y <= yPos[posOrder] + offset)  ) {

      if (moves[posOrder] == 1) {
        moveRight();
        posOrder ++;
      } else if (moves[posOrder] == 2) {
        moveLeft();
        posOrder ++;
      } else if (moves[posOrder] == 3) {
        moveUp();
        posOrder ++;
      } else if (moves[posOrder] == 4) {
        moveDown();
        posOrder ++;
      }
    }
  }
}
