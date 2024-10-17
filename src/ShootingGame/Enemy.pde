// Mr kapptie | 3 Oct 2024 | Levi Dorval |
class Enemy {
  // Member Variables
  PImage g1;
  int x, y, w, h;
  float health, speed, damage;
  boolean alive;
  char type;

  // Constructor
  Enemy() {
    g1 = loadImage("Enemy.png");
    x = width/2/2;
    y = height/2/2;
    w = 50;
    h = 50;
    health = 100;
    speed = 5;
    damage = 10;
    alive = true;
    type = 'b';
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
