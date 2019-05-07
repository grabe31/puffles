
int pengCount = 0;
int pengCountC;
Penguin pengs[] = new Penguin[10];

void showTowers() {
pengCountC = constrain(pengCount, 0, 10);
int pengCellX = 0;
int pengCellY = 0;
  for (int i = 0; i < pengCountC; i++) {
    pengs[i].display();
    
  
    if (mousePressed) {
      pengCellX = track.getCellX(mouseX);
      pengCellY = track.getCellY(mouseY);
      println(track.pengCells[track.getCellX(mouseX)][track.getCellY(mouseY)]);  //something doesnt work
       if (track.show[pengCellX][pengCellY] == false     // check for if its track
           && track.pengCells[track.getCellX(mouseX)][track.getCellY(mouseY)] == false) {  //check to see if spot is ocupied     //checks for penguin on mouse
         pengs[i].setStay(true);
  
    }
     
  }
    if (!pengs[i].stay) {    // only moves to place when the boolean is false
     pengs[i].update();
    } 
 
  }
  for (int i = 0; i < pengCount; i++) {
  if (pengs[i].inside()){       // add the check for other penguins 
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
