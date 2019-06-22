class Stage {
  
  boolean show[][] = { {false, false, false, false, false, false, false, true, false, false, false, false }, 
                 { false, true, true, true, true, false, false, true, false, false, false ,false },
                 { false, true, false, false, true, false, false, true, false ,false ,false, false },
                 { false, true, false, false, true, false, false, true, false ,false ,false, false },
                 { false, true, false, false, true, false, false, true, false ,false ,false, false },
                 { false, true, false, false, true, false, false, true, false ,false ,false, false },
                 { false, true, true, true, true, true, true, true, true, true, true, false }, 
                 { false, false, false, false, true, false, false, true, false, false, true, false }, 
                 { false, false, false, false, true, false, false, true, false, false, true, false },
                 { false, false, false, false, true, false, false, true, false, false, true, false }, 
                 { false, false, false, false, true, false, false, true, false, false, true, false }, 
                 { false, false, false, false, true, false, false, true, true, true, true, false },
                 { false, false, false, false, true, false, false, false, false, false, false, false } };
                   
boolean pengCells[][] =  { {false, false, false, false, false, false, false, true, false, false, false, false }, 
                 { false, true, true, true, true, false, false, true, false, false, false ,false },
                 { false, true, false, false, true, false, false, true, false ,false ,false, false },
                 { false, true, false, false, true, false, false, true, false ,false ,false, false },
                 { false, true, false, false, true, false, false, true, false ,false ,false, false },
                 { false, true, false, false, true, false, false, true, false ,false ,false, false },
                 { false, true, true, true, true, true, true, true, true, true, true, false }, 
                 { false, false, false, false, true, false, false, true, false, false, true, false }, 
                 { false, false, false, false, true, false, false, true, false, false, true, false },
                 { false, false, false, false, true, false, false, true, false, false, true, false }, 
                 { false, false, false, false, true, false, false, true, false, false, true, false }, 
                 { false, false, false, false, true, false, false, true, true, true, true, false },
                 { false, false, false, false, true, false, false, false, false, false, false, false } };

 Stage() {
   
 }


void display() {
   for (int i=0; i<13; i++) {
    for (int j=0; j<12; j++) {
      highlightGreen(i, j);
      if ((show[i][j] == false)) {
        cells[i][j].display();
      }
      }
    }
}

int getCellX(float cellX) {
  int mapX = int(map(cellX, 200, 850, 0, 13));
  int consX = constrain(mapX, 0, 13);
  return consX;   //always needs to return int
}
  
int getCellY(float cellY) {
  int mapY = int(map(cellY, 0, 650, 0, 13));
  return mapY;
}

void highlightGreen(int x, int y) {   
  if (mouseX > 200) {    //restriction to making the fill
   if (getCellX(mouseX) == x && getCellY(mouseY) == y) {        //IMPORTANT CODE STRUCTURE FOR CHECKING ALL CELLS
          cells[x][y].cFill = color(24, 189, 28, 125);
       } else {                   //refills when i and j do not match
         cells[x][y].cFill = color(225, 240, 247);
       }
  } else {                        //refills when moves off the screen
     cells[x][y].cFill = color(225, 240, 247);
  }
}

void highlightRed(int x, int y) {   
  if (mouseX > 200) {    //restriction to making the fill
   if (getCellX(mouseX) == x && getCellY(mouseY) == y) {        //IMPORTANT CODE STRUCTURE FOR CHECKING ALL CELLS
          cells[x][y].cFill = color(206, 19, 20, 25);
       } else {                   //refills when i and j do not match
         cells[x][y].cFill = color(225, 240, 247);
     
        // cells[x][y].cFill = color(225, 240, 247);  }
  } 
  }else {                        //refills when moves off the screen
     cells[x][y].cFill = color(225, 240, 247);
} 
}
}
