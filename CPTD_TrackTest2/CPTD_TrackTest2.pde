Cell cells[][] = new Cell[13][12];
Stage track = new Stage();
Interface UI = new Interface();
Puffle puffle[] = new Puffle[10];
Penguin peng[] = new Penguin[10];
Sword sword[] = new Sword[peng.length];

color blue = color(50, 50, 255);
color red = color(255, 25, 25);
color pink = color(255, 150, 150);

int pengCount = 0;
int pengCountC;

void setup() {
  rectMode(CENTER);
  size(850, 600);
  for (int i = 0; i < puffle.length; i++) {
    puffle[i] = new Puffle(870, 225, 40, 5, blue);
  }

  for (int i=0; i<13; i++) {
    for (int j=0; j<12; j++) {
      cells[i][j] = new Cell(i*50+225, j*50+25);
    }
  }

  for (int i = 0; i < peng.length; i++) {
    peng[i] = new Penguin(0, 0);
    sword[i] = new Sword(peng[i].getX(), peng[i].getY());
  }
}

void draw() {
  background(200);
  track.display();
  puffle[0].display();
  puffle[0].followTrack();

  showTowers();

  for (int i = 0; i < peng.length; i++) {
    peng[i].display();
    peng[i].update();
    peng[i].calculateSlope();
  }

  sword[0].display();
  throwSword();

  //cells[1][2].vertical();
  //cells[1][3].vertical();
  //cells[6][2].vertical();
  //cells[6][3].vertical();
  //cells[6][5].vertical();
  //cells[6][6].vertical();
  //cells[6][8].vertical();
  //cells[6][9].vertical();
  //cells[11][8].vertical();
  //cells[11][9].vertic);

  //  puffle.update();

  UI.display();
  // println(track.getCellX(mouseX));
  // println(track.getCellY(mouseY));
}

void throwSword() {
  println(peng[0].getX());
  for (int i = 0; i < peng.length; i++) {

    if (dist(peng[i].getX(), peng[i].getY(), puffle[i].getX(), puffle[i].getY()) < 400) { 
      sword[i].move(peng[i].getSlopeXConst(), peng[i].getSlopeYConst());
    } else if (sword[i].getX() < 0 || sword[i].getX() > width
      || sword[i].getY() > 0  || sword[i].getY() < height) {
      sword[i].setX(peng[i].getX());
      sword[i].setY(peng[i].getY());
    }
  }
}

void showTowers() {
  pengCountC = constrain(pengCount, 0, 10);
  int pengCellX = 0;
  int pengCellY = 0;
  for (int i = 0; i < pengCountC; i++) {
    peng[i].display();


    if (mousePressed) {
      pengCellX = track.getCellX(mouseX);
      pengCellY = track.getCellY(mouseY);
      println(track.pengCells[track.getCellX(mouseX)][track.getCellY(mouseY)]);  //something doesnt work
      if (track.show[pengCellX][pengCellY] == false     // check for if its track
        && track.pengCells[track.getCellX(mouseX)][track.getCellY(mouseY)] == false) {  //check to see if spot is ocupied     //checks for penguin on mouse
        peng[i].setStay(true);
      }
    }
    if (!peng[i].stay) {    // only moves to place when the boolean is false
      peng[i].update();
    }
  }
  for (int i = 0; i < pengCount; i++) {
    if (peng[i].inside()) {       // add the check for other penguins 
      track.pengCells[pengCellX][pengCellY] = true;
    } else {
      track.pengCells[pengCellX][pengCellY] = false;
    }
  }
}

void mousePressed() {        //mousePress function to not stack events
  pengCountC = constrain(pengCount, 0, 10);
  if (mouseX < 200) {    // change to UI.pI.inside();
    pengCount += 1;
  }
}
