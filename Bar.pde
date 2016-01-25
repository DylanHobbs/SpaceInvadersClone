class Bar {
  int x;
  int y;
  //int height;
  //int width;
  Bar(int xpos, int ypos) {
    x = xpos;
    y = ypos;
  } 


  void draw(){
    rect(x,y,50,50);
  }
  
  void collide(Bullet[] bullets){
    for(int i = 0; i < bullets.length; i++){
    if (x <= bullets[i].x && x >= bullets[i].x + 5 && y + 5 <= bullets[i].y && y + 5 >= bullets[i].y + 5) {
      
    }
    }
  }
  
}

