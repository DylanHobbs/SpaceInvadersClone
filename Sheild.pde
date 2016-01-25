class Sheild {
  SheildBlocks[][]sheildBlocks = new SheildBlocks[4][400/5]; 
  int xpos;
  int ypos;
  Sheild(int x, int y) {
    xpos = x;
    ypos = y;
  }
  void draw() {
    for (int i=0; i<4; i++) {
      for (int j=0; j<400/5; j++) {
        sheildBlocks[i][j] = new SheildBlocks(0 + j*5, 325 + i*5);
        if (sheildBlocks[i][j].alive) {
          sheildBlocks[i][j].draw();
        }
      }
    }
    for (int i=0; i<4; i++) {
      for (int j=0; j<400/5; j++) {
       // sheildBlocks[i][j].collide();
      }
    }
  }
}

