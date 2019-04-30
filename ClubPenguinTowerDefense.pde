float slopeX;
float slopeY;
float slopeXconstrain;
float slopeYconstrain;
Sword swords[] = new Sword[2];
Pirate pirates[] = new Pirate[2];
Puffle puffles[] = new Puffle[1];

void setup() {
  size(650, 650);
  fill(0);
  
  for(int i = 0; i < swords.length; i++) {
    swords[i] = new Sword(0, 0);
  }
  
  for(int i = 0; i < pirates.length; i++) {
    pirates[i] = new Pirate(width/4-random(30, 100), height/4+random(-30, 40), 1);
  }
  
  for(int i = 0; i < puffles.length; i++) {
    puffles[i] = new Puffle(0, 0);
  }
  
  swords[0].setX(1);
  swords[0].setY(1);
}

void draw() {
  background(0);
    
  pirates[0].display();
  swords[0].display();
  
  pufflesDisplay();
  shootSword();
}

void shootSword() {
    for(int k = 0; k < swords.length; k++) {
    for(int i = 0; i < puffles.length; i++) {
      if(dist(pirates[k].getX(), pirates[k].getY(), puffles[i].getX(), puffles[i].getY()) < 200) { 
          swords[k].move(pirates[k].getSlopeX(), pirates[k].getSlopeY());
       } else if(swords[k].getX() < pirates[k].getX() || swords[k].getX() > -pirates[k].getX()
       || swords[k].getY() > -pirates[k].getX()  || swords[k].getY() < pirates[k].getX()) {
          swords[k].setX(1);
          swords[k].setY(1);
       }
      }
    }
}

void pufflesDisplay() {
    for(int i = 0; i < puffles.length; i++) {
    puffles[i].display();
    puffles[i].move(1.5, 0);
    
    if(puffles[i].getX() > width) {
      puffles[i].setX(4);
      puffles[i].setY(random(4, height - 4));
      swords[i].setX(1);
      swords[i].setY(1);
    }
  }
}