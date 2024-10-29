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
Guns w1;
InfoPanel panel;
boolean play;
PImage start1;

void setup() {
  size (500, 500);
  //t1 = new Timer(500);
  level = 1;
  b1 = new Bullets();
  play = false;
  start1 = loadImage("StartPlayer.png");
  p1 = new Player(100,100,0,0);
  e1 = new Enemy();
  w1 = new Guns();
  panel = new InfoPanel(0, 100, 3, 1);
}
void draw() {
  if (play == false) {
    startScreen();
  } else {
    // You are playing the game!
    PImage img;
    img = loadImage("Map.png");
    background(img);
    p1.display();
    p1.update();
    b1.display();
    e1.display();
    e1.move();
    w1.display();
    panel.updateScore(10);
    panel.updateScore(-10);
    panel.display();
  }
}
void keyPressed() {
  if (key == 'w') p1.applyForce(0, -1);
  if (key == 's') p1.applyForce(0, 1);
  if (key == 'a') p1.applyForce(-1, 0);
  if (key == 'd') p1.applyForce(1, 0);
}

void startScreen() {
  image(start1, 0, 0);
  if (keyPressed || mousePressed) {
    play = true;
  }
}
void gameOver() {
}
