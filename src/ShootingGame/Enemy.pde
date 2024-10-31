// Hongwen | 3 Oct 2024 | Levi Dorval |
class Enemy {
  // Member Variables
  PImage g1;
  int x, y, w, h;
  float health, speed, damage, r;
  boolean alive;
  char type;

  // Constructor
  Enemy() {
    g1 = loadImage("Enemy.png");
    r = 10;
    x = int(random(width));
    y = height/2/2;
    w = 50;
    h = 50;
    health = 100;
    speed = random(1,5);
    damage = 10;
    alive = true;
    type = 'b';
  }
  
   boolean reachedBottom() {
    // If we go a little beyond the bottom
    if (y > height + r*4) { 
      return true;
    } else {
      return false;
    }
  }

  // Member Methods
  void display() {
    imageMode(CENTER);
    // g1.resize(50,50);
    image(g1, x, y);
  }
  void move() {
    x = x + int(speed);
  }
}
