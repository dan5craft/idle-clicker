ArrayList<PVector> circles;
ArrayList<PVector> originalPositions;
ArrayList<Integer> colors;
ArrayList<Integer> drawOrder;

float maxShift = 100;
float spawnRadius = 40;
color neutronColor = color(0, 100, 255);
color protonColor = color(255, 204, 0);


void addCircle(int circleColor) {
  for (int i = 0; i < circles.size(); i++) {
    PVector original = originalPositions.get(i);
    
    float angle = random(TWO_PI);
    float distance = random(0, 5);
    float newX = original.x + cos(angle) * distance;
    float newY = original.y + sin(angle) * distance;
    
    if (dist(newX, newY, original.x, original.y) <= maxShift) {
      circles.get(i).set(newX, newY);
    }
  }
  
  float spawnAngle = random(TWO_PI);
  float spawnDistance = random(spawnRadius);
  float spawnX = width/5*4 + cos(spawnAngle) * spawnDistance;
  float spawnY = height/2 + sin(spawnAngle) * spawnDistance;
  
  PVector newPos = new PVector(spawnX, spawnY);
  circles.add(newPos);
  originalPositions.add(newPos.copy());
  colors.add(circleColor);
  
  updateDrawOrder();
}

void updateDrawOrder() {
  drawOrder.clear();
  for (int i = 0; i < circles.size(); i++) {
    drawOrder.add(i);
  }
  shuffle(drawOrder);
}

void shuffle(ArrayList<Integer> list) {
  for (int i = list.size() - 1; i > 0; i--) {
    int j = (int) random(i + 1);
    int temp = list.get(i);
    list.set(i, list.get(j));
    list.set(j, temp);
  }
}
