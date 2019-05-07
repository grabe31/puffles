class Puffle {
  
  float x, y, xspeed, yspeed;
  float xPos[] = { 275, 275, 525, 525, 775, 775, 0 };
  float yPos[] = { 225, 75, 75, 525, 525, 375, 0 };
  int moves[] = { 3, 1, 4, 1, 3, 2 };
  int posOrder_ = 0;    // needs to constrain
  int posOrder;    // actual count value for x and y positions of the track
  float r, offset;
  float s;    // making the speed work off of the radius
  
  Puffle() {
    x = width + 50;
    y = 225;
    posOrder = constrain(posOrder_, 0, 5);
    s = 2.8;
    offset = 3;
    moveLeft();
  }
  
void display() {
  fill(0, 235, 0);
  stroke(0);
  strokeWeight(1);
  ellipse(x, y, 40, 40);
}

void update() {
  x += xspeed;
  y += yspeed;
  println(xspeed);
}

void moveRight() {  // 1
  xspeed = s;
  yspeed = 0;
}
void moveLeft() {   // 2
  xspeed = -s;
  yspeed = 0;
}
void moveUp() {     // 3
  xspeed = 0;
  yspeed = -s;
}
void moveDown() {   // 4
  xspeed = 0;
  yspeed = s;
}

void followTrack() {
  update();
  
  
  if (  (x >= xPos[posOrder] - r && x <= xPos[posOrder] + r)
      && (y >= yPos[posOrder] - r  && y <= yPos[posOrder] + r)  ) {
    
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
