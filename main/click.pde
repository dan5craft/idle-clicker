void mousePressed() {
  if (sqrt(pow(mouseX-(clicker.getX()+clicker.getSizeX()/2), 2)+pow(mouseY-(clicker.getY()+clicker.getSizeY()/2), 2)) <= clicker.currentSizeX/2) {
    clicking();
  }
  if (skærm == "hovedside") {
    for (int i=0; i<clickUpgrades.size(); i++) {
      ClickUpgrade upgrade = clickUpgrades.get(i);
      if (upgrade.musOver()) {
        upgrade.buy();
      }
    }
  }
}

void clicking() {
  clicker.currentSizeX *= 0.9;
  clicker.currentSizeY *= 0.9;
  clicker.multi = 1+ upgrade1num + upgrade2num * 2 + upgrade3num * 5 + upgrade4num * 10 + upgrade5num * 50;
  money.Add(clickPower);
}
