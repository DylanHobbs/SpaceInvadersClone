Alien aliens[];
Bullet bullets[];
Sheild sheild;
Bomb bombs[];
Bar bar[];
Bomb bomb;
int count = 0;
int bombCount = 0;
Player thePlayer;
boolean powerOn = false;
boolean bulletOn = false;
boolean poweredUp = false;
int gameState = 1;
int alienBombReturnIndex;
void setup() {
  PImage normalImg;
  PImage explodeImg;
  size(SCREENX, SCREENY);
  thePlayer = new Player(SCREENY);
  normalImg = loadImage("invader.GIF");
  explodeImg = loadImage("exploding.GIF");
  aliens = new Alien[10];
  bullets = new Bullet[200];
  bombs = new Bomb[200];
  init_array(aliens, normalImg, explodeImg);
  //init_sheilds();
  bar = new Bar[40];
}

void init_array(Alien aliens[], PImage normalImg, PImage explodeImg) {
  for (int i=0; i<aliens.length; i++) {
    aliens[i]  =  new  Alien(i*(normalImg.width+GAP), 0, normalImg);
  }
}

void draw() {
  boolean win = winCond();
  if (gameState == 1) {
    background(0);
    //bar.draw(20,20);
    thePlayer.draw();
    thePlayer.move(mouseX);
    for (int i=0; i < aliens.length; i++) {
      aliens[i].move();
      aliens[i].draw();
    }
    if (bulletOn) {
      for (int i=0; i < bullets.length; i++) {
        if (bullets[i] != null) {
          bullets[i].draw();
          bullets[i].move();
          bullets[i].collide(aliens);
        }
      }
    }
    if (random(0, 20) < 1) { 
      int alienIndex = (int)random(0, 10); 
      if (aliens[alienIndex].alive == true && !aliens[alienIndex].armed) {
        bombs[bombCount] = new Bomb(aliens[alienIndex].x + ALIENw /2, aliens[alienIndex].y + ALIENh);
        bombs[bombCount].alienIndex = alienIndex;
        bombCount++;
        //aliens[alienIndex].armed = true;
        powerOn = true;
      }
    }
    for (int i=0; i < bombs.length; i++) {
      if (bombs[i] != null) {
        bombs[i].draw();
        bombs[i].move();
        bombs[i].collide();
      }
    }
    //init_sheilds();
    //sheild.draw(bullets);
  }
    if (gameState == 0) {
      background(255);
      textSize(32);
      textAlign(CENTER);
      text("GAME OVER", SCREENX / 2, SCREENY / 2);
    }
  
  if (win) {
    background(255);
    textSize(32);
    textAlign(CENTER);
    text("YOU WIN", SCREENX / 2, SCREENY / 2);
  }
}

void mousePressed() {
  if (poweredUp) {
    bullets[count] = new Bullet(thePlayer.xpos, thePlayer.ypos);
    count += 1;
    bullets[count] = new Bullet(thePlayer.xpos + PLAYERw, thePlayer.ypos);
  } else {
    bullets[count] = new Bullet(thePlayer.xpos, thePlayer.ypos);
  }
  //theBullet = new Bullet(thePlayer.xpos, thePlayer.ypos);
  bulletOn = true;
  count = count + 1;
}

boolean winCond() {
  int winCond = 0;
  for (int i=0; i < aliens.length; i++) {
    if (aliens[i].alive) {
      return false;
    }
  } 
  return true;
}

void offScreen(){
  for(int i=0; i<bombs.length; i++){
     if(bombs[i].y() > SCREENY){
          int alienBombReturnI = bombs[i].alienIndex;
          aliens[alienBombReturnI].armed = false;
          print("test");
     }
  }
}

//void init_sheilds(){
//  sheild = new Sheild(50,50);
// // sheild.draw();
//}

//
