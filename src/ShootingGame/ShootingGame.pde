// Levi Dorval | 3 Oct 2024
class Player {
  // Member Variables
  PImage g1;
  int x, y, w, h;
  float health, speed;

  // Constructor
  Player() {
    g1 = loadImage("Player.png");
    x = width/2;
    y = height/2;
    w = 50;
    h = 50;
    health = 100;
    speed = 5;
  }

  // Member Methods
  void display() {
    imageMode(CENTER);
    //g1.resize(50);
    image(g1, x, y);
  }
  void move(char dir) {
    if(dir == 'u') {
    y -= 5;
    } else if(dir == 'd'){
      y += 5;
    } else if(dir == 'r') {
      x += 5;
    } else if(dir == 'l') {
      x -= 5;
    }
  }
 
}
