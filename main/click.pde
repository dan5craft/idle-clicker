void mousePressed() {
  if (dist(mouseX, mouseY, width/5*4, height/2) <= maxShift) {
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
    for (int i=0; i<Knapper.size(); i++) {
      Knap knap = Knapper.get(i);
      if (knap.musOver()) {
        knap.buy();
      }
    }
  }
}

void clicking() {
  clickPowerAdd = clickPower.returnMultiply(effectiveness);
  money.Add(clickPowerAdd);//.returnMultiply(new Number(1+(1-clicker.currentSize/(clicker.cirkelSize*1.1))*9, 0)));
  clicker.currentSize *= 0.9;
  clicker.multi = 1+ upgrade1num + upgrade2num * 2 + upgrade3num * 5 + upgrade4num * 10 + upgrade5num * 50;
}
