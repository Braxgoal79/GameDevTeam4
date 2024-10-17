// Title | Levi Dorval | Oct 17 2024|

int level;
ArrayList<Bullets> bullets = new ArrayList<Bullets>();
ArrayList<Enemy> enemy = new ArrayList<Enemy>();
//ArrayList<Guns> guns = new ArrayList<Guns>();
//ArrayList<Player> player = new ArrayList<Player>();
//ArrayList<Timer> timer = new ArrayList<Timer>();
//ArrayList<Map> map = new ArrayList<map>();
Player p1;
Enemy e1;
Bullets b1;
boolean play;
PImage start1;

void setup() {
  size (500, 500);
  level = 1;
  b1 = new Bullets();
  play = false;
  start1 = loadImage("StartPlayer.png");
  p1 = new Player();
  e1 = new Enemy();
}
void draw() {
  if (play == false) {
    startScreen();
  } else {
    // You are playing the game!
    background(127);
    p1.display();
    b1.display();
    e1.display();
  }
}

void keyPressed() {
}

void startScreen() {
  image(start1, 0, 0);
  if (keyPressed || mousePressed) {
    play = true;
  }
}
void gameOver() {
}
