class Bullet {
  int x;
  int y;
  Bullet(int xpos, int ypos) {
    x = xpos;
    y = ypos;
  }

  void draw() {
    ellipse(x + 25, y, 5, 5);
  }

  void move() {
    y = y-5;
  }
  
  void collide(Alien aliens[]) {
    for (int i =0; i < aliens.length; i++) {
      if (x >= aliens[i].x && x <= aliens[i].x + aliens[i].normalImg.width && y >= aliens[i].y && y <= aliens[i].y + aliens[i].normalImg.height) {
        aliens[i].die();
        aliens[i].alive = false;
      }
    }
  }
}

