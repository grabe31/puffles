Cell cells[][] = new Cell[13][12];
Stage track = new Stage();
Penguin peng = new Penguin(0, 0);
Interface UI = new Interface();
Puffle puffle;
color blue = color(50, 50, 255);
color red = color(255, 25, 25);
color pink = color(255, 150, 150);

void setup() {
  rectMode(CENTER);
  size(850, 600);
  puffle = new Puffle(870, 225, 40, 5, blue);
  
  
  for (int i=0; i<13; i++) {
    for (int j=0; j<12; j++) {
        
      cells[i][j] = new Cell(i*50+225, j*50+25);
    }
  }
  
  for (int i = 0; i < 10; i++) {
    pengs[i] = new Penguin(0, 0);
  }
}

void draw() {
  background(200);
  track.display();
  showTowers();
 // peng.display();
 // peng.update();
 
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
  puffle.display();
//  puffle.update();
  puffle.followTrack();
   UI.display();
 // println(track.getCellX(mouseX));
 // println(track.getCellY(mouseY));
}
