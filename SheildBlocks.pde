class SheildBlocks {
  int xpos;
  int ypos;
  int radius;
  boolean alive;
  SheildBlocks(int x, int y) {
    xpos = x;
    ypos = y; 
    radius = 5;
    alive = true;
  }

  void draw() {
    fill(192, 168, 254);
    rect(xpos, ypos, radius, 5.0);
  }


  void collide(Bullet bullets[]) {
    for (int i=0; i<bullets.length; i++) {
      if (xpos <= bullets[i].x && xpos >= bullets[i].x + 5 && ypos + 5 <= bullets[i].y && ypos + 5 >= bullets[i].y + 5) {
        
      }
    }
  }
}

