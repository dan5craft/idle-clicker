void mousePressed(){
  if(mouseX > clicker.getX() && mouseX < clicker.getX() + clicker.getSizeX() && mouseY > clicker.getY() && mouseY < clicker.getY() + clicker.getSizeY()) {
    clicking();
  }
}

void clicking(){
  clicker.currentSizeX *= 0.8;
  clicker.currentSizeY *= 0.8;
  clicker.multi = 1+ upgrade1num + upgrade2num * 2 + upgrade3num * 5 + upgrade4num * 10 + upgrade5num * 50;
  money += clicker.getClickValue() * clicker.getMulti();
}
