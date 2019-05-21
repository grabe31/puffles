class Interface {
  float opt1X = 75, opt1Y = 75;
  Penguin pI = new Penguin(opt1X, opt1Y);

  Interface() {
  }

  void display() {    // the left-most choosing ui thing
    noStroke();
    fill(80);
    rect(100, height/2, 200, height);

    displayTowers();    // displays the tower options
  }

  void displayTowers() {
    stroke(240);
    strokeWeight(3);
    fill(200, 140);
    ellipse(opt1X, opt1Y, 60, 60);     // surrounding circle 

    pI.display();
  }

  void displayUpgrades() {
  }
}
