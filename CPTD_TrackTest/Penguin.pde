class Penguin {
  float pengx, pengy, armrx, armlx, army, slopeX[], slopeY[], slopeXConstrain[], slopeYConstrain[];
  boolean stay = false;

  //float pengCellX[] = new float[13];
  // float peng

  Penguin(float tx, float ty) {
    pengx = tx;
    pengy = ty;
    armrx = pengx + 20;
    armlx = pengx - 20;
    army = pengy - 5;

    slopeX = new float[puffle.length];
    slopeY = new float[puffle.length];
    slopeXConstrain = new float[puffle.length];
    slopeYConstrain = new float[puffle.length];
  }

  void calculateSlope() {
    for (int i = 0; i < puffle.length; i++) {   
      slopeX[i] = 0.05 * (puffle[i].getX() - pengx);
      slopeXConstrain[i] = constrain(slopeX[i], -6, 6);

      slopeY[i] = 0.05 * (puffle[i].getY() - pengy);
      slopeYConstrain[i] = constrain(slopeY[i], -6, 6);
    }
  }

  float getX() {
    return pengx;
  }

  float getY() {
    return pengy;
  }

  void setX(float tx) {
    pengx = tx;
    armrx = pengx + 20;
    armlx = pengx - 20;
  }

  void setY(float ty) {
    pengy = ty; 
    army = pengy - 5;
  }

  //float getSlopeXConstrain(int k) {
  //  return slopeXConstrain[k];
  //}
  //float getSlopeYConstrain(int k) {
  //  return slopeYConstrain[k];
  //}

  void display() { 
    fill(0); 
    strokeWeight(1);
    stroke(255);
    ellipse(pengx, pengy, 40, 30); //body

    beginShape();
    vertex(armlx, army);
    vertex(armlx - 8, army + 5);
    vertex(armlx - 12, army + 18);
    vertex(armlx - 5, army + 10);
    vertex(armlx, army + 8);
    endShape(); 

    beginShape();
    vertex(armrx, army);
    vertex(armrx + 8, army + 5);
    vertex(armrx + 12, army + 18); 
    vertex(armrx + 5, army + 10);
    vertex(armrx + 1, army + 8);
    endShape();

    fill(255, 146, 3);
    beginShape(); //beak2
    vertex(pengx - 5, pengy + 15);
    vertex(pengx - 5, pengy + 20);
    bezierVertex(pengx - 5, pengy + 20, pengx, pengy + 30, pengx + 5, pengy + 20);
    vertex(pengx + 5, pengy + 15);
    endShape();

    fill(255);
    ellipse(pengx - 7, pengy + 10, 8, 5); //eyes
    ellipse(pengx + 7, pengy + 10, 8, 5);

    fill(0);
    ellipse(pengx - 7, pengy + 11, 4, 5);
    ellipse(pengx + 7, pengy + 11, 4, 5);
  }

  void update() {   //NEW
    pengx = (track.getCellX(mouseX)*50)+225;
    pengy = (track.getCellY(mouseY)*50)+25;
    armrx = pengx + 20;
    armlx = pengx - 20;
    army = pengy - 5;
  }
  //void detectPuff(){
  //  for(Puffle p: puffle){
  //    p.check();
  //  }
  //}

  void setStay(boolean set) {   //pass in t
    if (mouseX > 200) {    //extra to not interfere with ui

      if (set) {     //core of the code
        stay = true;
      } else {
        stay = false;
      }
    }
  }

  boolean inside() {
    float d = dist(pengx, pengy, mouseX, mouseY);   
    if (d <= 35) {
      return true;
    } else {
      return false;
    }
  }
}
