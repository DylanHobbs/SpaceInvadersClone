class Player {
  int xpos;
  int ypos;
  color playerColor = 255;
  Player(int screen_y) {
    xpos = SCREENX / 2;
    ypos = screen_y - PLAYERh;
  } 

  void move(int x) {
    if (x > SCREENX-PLAYERw) {
      xpos = SCREENX-PLAYERw;
    } else {
      xpos=x;
    }
  } 

  void draw() {  
    fill(playerColor);  
    rect(xpos, ypos, PLAYERw, PLAYERh);
  }
}



