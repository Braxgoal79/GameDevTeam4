// Title | Levi Dorval | Oct 17 2024|
import processing.sound.*;
SoundFile steps;

int level, welcomeCounter;
ArrayList<Bullets> bullets = new ArrayList<Bullets>();
ArrayList<Enemy> enemy = new ArrayList<Enemy>();
//ArrayList<Guns> guns = new ArrayList<Guns>();
//ArrayList<Player> player = new ArrayList<Player>();
//ArrayList<Timer> timer = new ArrayList<Timer>();
//ArrayList<Map> map = new ArrayList<map>();
Timer wTime;
Player p1;
Enemy e1;
Bullets b1;
Guns w1;
InfoPanel panel;
boolean play;
PImage start1;

void setup() {
  size (1100, 1100);
  //t1 = new Timer(500);
  level = 1;
  b1 = new Bullets();
  welcomeCounter = 0;
  wTime = new Timer(4000);
  wTime.start();
  play = false;
  start1 = loadImage("StartPlayer.png");
  p1 = new Player(100, 100, 0, 0);
  e1 = new Enemy();
  w1 = new Guns();
  panel = new InfoPanel(0, 100, 3, 1);
  steps = new SoundFile(this, "walking.wav");
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
  if (key == 'w') {
    p1.applyForce(0, -1);
    steps.play();
  }
  if (key == 's') {
    p1.applyForce(0, 1);
    steps.play();
  }
  if (key == 'a') {
    p1.applyForce(-1, 0);
    steps.play();
  }
  if (key == 'd') {
    p1.applyForce(1, 0);
    steps.play();
  }
}

void startScreen() {
  image(start1, 0, 0);
  if (keyPressed || mousePressed) {
    play = true;
  }


  if (wTime.isFinished()) {
    wTime.start();
    welcomeCounter++;
  }
  switch(welcomeCounter) {
  case 0:
    fill(255);
    text("The world as it's been known is gone.\n Monsters run and all seems lost.\n But one individual stood the test of time. \n Tyler Hughes, a lonely man and his goldfish.\n Hiding away was always Tyler's option Hiding away was always Tyler's option, \n but his goldfish has been taken, a cheap attempt for hostility and stupidity. \n Well, if they want a hostile and stupid Tyler, \n That's what they'll get. \n Tyler will go out to get his goldfish and cause the monster's END \n Even if it's the last thing done.", 100, 100);
    break;
  case 1:
    fill(255);
    text("", 100, 100);
    break;
  default:
    println("None");
    break;
  }
}
void gameOver() {
}
