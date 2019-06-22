Cell cells[][] = new Cell[13][12];
Stage track = new Stage();
Penguin peng = new Penguin(0, 0);
Interface UI = new Interface();
Puffle puffle;

void setup() {
  rectMode(CENTER);
  size(850, 600);
  puffle = new Puffle();
  
  
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
 
  cells[1][2].vertical();    cells[2][1].horizontal();
  cells[1][3].vertical();    cells[3][1].horizontal();
  cells[6][2].vertical();    cells[4][1].horizontal();
  cells[6][3].vertical();    cells[5][1].horizontal();
  cells[6][5].vertical();    cells[2][4].horizontal();
  cells[6][6].vertical();    cells[3][4].horizontal();
  cells[6][8].vertical();    cells[4][4].horizontal();
  cells[6][9].vertical();    cells[5][4].horizontal();
  cells[11][8].vertical();   cells[7][4].horizontal();
  cells[11][9].vertical();   cells[8][4].horizontal();
                             cells[9][4].horizontal();
                             cells[10][4].horizontal();
                             cells[11][4].horizontal();
                             cells[12][4].horizontal();
                             cells[0][7].horizontal();
                             cells[1][7].horizontal();
                             cells[2][7].horizontal();
                             cells[3][7].horizontal();
                             cells[4][7].horizontal();
                             cells[5][7].horizontal();
                             cells[7][7].horizontal();
                             cells[8][7].horizontal();
                             cells[9][7].horizontal();
                             cells[10][7].horizontal();
                             cells[7][10].horizontal();
                             cells[8][10].horizontal();
                             cells[9][10].horizontal();
                             cells[10][10].horizontal();
 // puffle.display();
//  puffle.update();
  //puffle.followTrack();
   UI.display();
 // println(track.getCellX(mouseX));
 // println(track.getCellY(mouseY));
}
