// Information class Hud | Levi Dorval | Oct 24 2024 |
class InfoPanel {
  int score;
  int health;
  int lives;
  int level;
  
  InfoPanel(int initialScore, int initialHealth, int initialLives, int initialLevel) {
    score = initialScore;
    health = initialHealth;
    lives = initialLives;
    level = initialLevel;
  }  

  void updateScore(int points) {
    score += points;
  }

  void updateHealth(int change) {
    health += change;
    health = constrain(health, 0, 100); 
  }
  
  void updateLives(int change) {
    lives += change;
  }
  
  void nextLevel() {
    level += 1;
  }

  void display() {

    fill(50, 50, 50, 150); 
    rect(10, 10, 200, 100);
     
    fill(255);
    textSize(12);
 
    text("Score: " + score, 20, 30);    
    
    text("Health: " + health, 20, 50);
    
    text("Lives: " + lives, 20, 70);    
    
    text("Level: " + level, 20, 90);
    
  }

}
    


