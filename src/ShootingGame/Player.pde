// Levi Dorval | 3 Oct 2024
class Player {
  // Member Variables
  PImage g1;
  int x,y,w,h;
  flota health, speed, 
  
  // Constructor  
  Player() {
  g1 = loadImage("");
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
    g1.resize(50);
    image(g1,x,y);
  }
  voide move() {
  
}

}
