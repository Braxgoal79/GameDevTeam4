// Penny Jorgensen | Oct 15 2024
class Map {
  //Member Variables
  PImage m1;
  int x, y, w, h;

  // Constructor
  Map() {
    m1 = loadImage(" ");
    x = 0;
    y = 0;
    w = 50;
    h = 50;
  }

  // Member Methods
  void display() {
    imageMode(CENTER);
    // g1.resize(50,50);
    image(m1, x, y);
  }
}
