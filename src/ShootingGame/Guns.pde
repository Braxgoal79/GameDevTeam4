//stephen wallace oct 17th
// Mr kapptie | 3 Oct 2024 | Levi Dorval |
class Guns {
  // Member Variables
  PImage g1;
  int x, y, w;
  char type;

  // Constructor
  Guns() {
    g1 = loadImage("gun.png");
    x = width/2/2;
    y = height/2/2;
    w = 50;
   
    
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
