ArrayList<Electron> balls = new ArrayList<Electron>();

class Electron {
  float centerX, centerY;
  float radius;
  float angle;
  float speed;
  color ballColor;
  
  Electron(float centerX, float centerY, float radius, float speed, color ballColor) {
    this.centerX = centerX;
    this.centerY = centerY;
    this.radius = radius;
    this.speed = speed;
    this.angle = 0;
    this.ballColor = ballColor;
  }
  
  void update() {
    angle += speed;
  }
  
  void display() {
    float ballX = centerX + radius * cos(angle);
    float ballY = centerY + radius * sin(angle);
    fill(ballColor);
    circle(ballX, ballY, width/150);
  }
}
