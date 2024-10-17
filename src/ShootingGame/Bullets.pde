// Braxton Romero | Oct 3 2024
class Bullets {
  //Member Variables
  PImage g1;
  int x, y, w, h;
  float speed, damage;

  // Constructor
  Bullets() {
    g1 = loadImage("Bullets.png");
    x = width/2/5;
    y = height/2/5;
    w = 50;
    h = 50;
    speed = 5;
    damage = 10;
  }

  // Member Methods
  void display() {
    imageMode(CENTER);
    // g1.resize(50,50);
    image(g1, x, y);
  }
  void move() {
    x = x + 1;
  }
}
