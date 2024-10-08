// Title
Bullets b1;
int level;
ArrayList<Bullets> bullets = new ArrayList<Bullets>();
ArrayList<Enemy> enemy = new ArrayList<Enemy>();
ArrayList<Guns> guns = new ArrayList<Guns>();
ArrayList<Player> player = new ArrayList<Player>();
ArrayList<Timer> timer = new ArrayList<Timer>();
boolean play;
PImage start1;

void setup() {
  size (500, 500);
  level = 1;
  b1 = new Bullets();
  play = false;
}
void draw() {
  if(play == false) {
    startScreen();
  } else {
    // You are playing the game!
}

void keyPressed() {
}
void startScreen() {
 image(Startplayer.png,0,0);
 }

void gameOver() {}
