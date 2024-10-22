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
Timer t1;
boolean play;
PImage start1;

void setup() {
  size (500, 500);
  //t1 = new Timer(500);
  level = 1;
  b1 = new Bullets();
  play = false;
  start1 = loadImage("StartPlayer.png");
  p1 = new Player();
  e1 = new Enemy();
  w1 = new Guns();
}
void draw() {
  if (play == false) {
    startScreen();
  } else {
    // You are playing the game!
    PImage img;
    img = loadImage("New Piskel.png");
    background(img);    
p1.display();
    b1.display();
    e1.display();
    e1.move();
    w1.display();
    
  }
}

void keyPressed() {
  if(key == 'w') {
    p1.move('u');
  } else if(key == 's') {
    p1.move('d');
  } else if(key == 'd') {
    p1.move('r');
  }else if(key == 'a') {
    p1.move('l');
  }
}

void startScreen() {
  image(start1, 0, 0);
  if (keyPressed || mousePressed) {
    play = true;
  }
}
void gameOver() {
}
