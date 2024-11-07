// Levi Dorval | 3 Oct 2024
class Player {
  // Member Variables
  PImage g1;
  float health, speed;
  float x, y;
  float velocityX, velocityY;
  float acceleration = 5;
  float maxSpeed = 10;
  float friction = 0.8;
  float h, w;
  

  // Constructor
  Player(float startX, float startY, float playerWidth, float playerHeight) {
    g1 = loadImage("Player.png");
    x = startX;
    y = startY;
    w = playerWidth;
    h = playerHeight;
    velocityX = 0;
    velocityY = 0;
  }

  // Member Methods
  void display() {
    imageMode(CENTER);
    //g1.resize(50);
    image(g1, x, y);
  }
 void update() {
   x += velocityX;
   y += velocityY;
   
   velocityX *= friction;
   velocityY *= friction;
   
   velocityX = constrain(velocityX, -maxSpeed, maxSpeed);
   velocityY = constrain(velocityY, -maxSpeed, maxSpeed);
 }
 void applyForce(float forceX, float forceY) {
   velocityX += forceX * acceleration;
   velocityY += forceY * acceleration;
 }
 
}
