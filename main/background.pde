ArrayList<BackgroundMaker> stars = new ArrayList<BackgroundMaker>();

class BackgroundMaker {
  float x;
  float y;
  float speed;
  int rotation;
  
  BackgroundMaker(float x, float y, float speed, int rotation){
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.rotation = rotation;
    stars.add(this);
  }
  
  float getX(){
    return x;
  }
  
  float getY(){
    return y;
  }
  
  void drawBackground(){
    star(x, y, width/300);
  }
  
  void move(){
    x += speed;
    y += speed;
  }
}

void star(float x, float y, float radius) {
  float angle = TWO_PI / 5;
  float halfAngle = angle/2;
  float rotation = 2;
  noStroke();
  beginShape();
  for (int i = 0; i < 5; i++) {
    float ang = rotation + i * angle;
    vertex(x + cos(ang) * radius, y + sin(ang) * radius);
    ang += halfAngle;
    vertex(x + cos(ang) * radius/2, y + sin(ang) * radius/2);
  }
  endShape(CLOSE);
  stroke(0);
}
