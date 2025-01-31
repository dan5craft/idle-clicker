void mousePressed() {
  if (sqrt(pow(mouseX-(clicker.getX()+clicker.getSizeX()/2), 2)+pow(mouseY-(clicker.getY()+clicker.getSizeY()/2), 2)) <= clicker.currentSize/2) {
    clicking();
    
    for (int i = 0; i < 5; i++) {
      partikler.add(new Energi(mouseX, mouseY));
    }
    
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
  money.Add(clickPower);//.returnMultiply(new Number(1+(1-clicker.currentSize/(clicker.cirkelSize*1.1))*9, 0)));
  clicker.currentSize *= 0.9;
  clicker.multi = 1+ upgrade1num + upgrade2num * 2 + upgrade3num * 5 + upgrade4num * 10 + upgrade5num * 50;
}
