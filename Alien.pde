class Alien {
  int x;  
  int y;  
  boolean direction;
  PImage normalImg;
  PImage explodeImg = loadImage("exploding.GIF");
  boolean alive;
  boolean armed;
  Alien(int xpos, int ypos, PImage img) {
    alive = true;
    x = xpos;  
    y = ypos;
    normalImg = img;
    direction = FORWARD;
    armed = false;
  }

  void draw() { 
    if (alive) {
      image(normalImg, x, y);
    } 
  }

  void die() {
    if (alive) {
      alive = false;
      normalImg = loadImage("exploding.GIF");
    }
  }

  void  move() {
    if (direction == FORWARD) {
      if (x + normalImg.width < SCREENX) {
        x+=1;
      } else {
        direction = BACKWARD;
        y += normalImg.height + GAP;
      }
    } else if (x > 0) {  
      x-=1;
    } else {
      direction = FORWARD;
      y += normalImg.height + GAP;
    }
  }
  
  int x(){
    return x;
  }
  
  int y(){
    return y;
  }
}

