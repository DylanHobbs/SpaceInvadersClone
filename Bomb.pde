class Bomb {
  int x;
  int y;
  int alienIndex;
  Bomb(int xpos, int ypos) {
    x = xpos;
    y = ypos;
   alienIndex = 0;
  }

  void draw() {
    fill(255, 0, 0);
    rect(x, y, BOMBh, BOMBw);
  }

  void move() {
    y = y+2;
  }

  void collide(){
     if (x >= thePlayer.xpos && x <= thePlayer.xpos + PLAYERw && y + BOMBh >= thePlayer.ypos && y + BOMBh <= thePlayer.ypos + PLAYERh) {
      gameState = 0;
    }
  }
  
  int x(){
    return x;
  }
  
  int y(){
     return y; 
  }

//  void collide1() {
//    if (x >= thePlayer.xpos && x <= thePlayer.xpos + PLAYERw && y <= thePlayer.ypos && y >= thePlayer.ypos - PLAYERh {
//      poweredUp = true;
//      textSize(32);
//      textAlign(CENTER);
//      text("DOUBLE SHOT", SCREENX / 2, SCREENY / 2); 
//    }
//  }
}

