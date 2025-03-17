ArrayList<ClickUpgrade> clickUpgrades = new ArrayList<ClickUpgrade>();

class ClickUpgrade {
  Number price;
  Number increase;
  float x, y, sizeX, sizeY;
  String tekst;
  String titel;
  color farve, hoverFarve, klikFarve, tekstFarve;
  PFont Font;
  int ringSize;
  String type;
  ClickUpgrade(Number price, Number increase, float x, float y, float sizeX, float sizeY, String titel, String type, PFont Font, int ringSize, color tekstFarve, color farve, color hoverFarve, color klikFarve) {
    this.price = price;
    this.increase = increase;
    this.x = x;
    this.y = y;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.titel = titel;
    this.type = type;
    this.Font = Font;
    this.ringSize = ringSize;
    this.tekstFarve = tekstFarve;
    this.farve = farve;
    this.hoverFarve = hoverFarve;
    this.klikFarve = klikFarve;
    clickUpgrades.add(this);
  }
  
  
  void tegnKnap() {
    if(type == upgradeTab){
      tekst = titel+ ": " + increase.string() + "\n" + price.string();
      if (musOver()) {
        if (mousePressed) {
          fill(klikFarve);
        } else {
          fill(hoverFarve);
        }
      } else {
        fill(farve);
      }
      rect(x, y, sizeX, sizeY);
      textFont(Font);
      textAlign(CENTER, CENTER);
      fill(tekstFarve);
      text(tekst, x+sizeX/2, y+sizeY/2);
    }
  }
  boolean musOver() {
    if (mouseX > x && mouseX < x+sizeX && mouseY > y && mouseY < y+sizeY) {
      return true;
    } else {
      return false;
    }
  }
  void buy() {
    if(upgradeTab == "Electron" && startKøbt == true){
      if(type == "Electron"){
        if (money.isBiggerOrEqualTo(price)) {
          mps.Add(increase);
          money.Subtract(price);
          price.Multiply(new Number(1.1, 0));
          numberOfElectron++;
          float radius = ringSize * width/60 + width/30;
          float speed = random(0.005, 0.01);
          color ballColor = color(0,0, 150);
          if(ringSize > numberOfRings) {numberOfRings = ringSize;}
          balls.add(new Electron(width/5*4, height/2, radius, speed, ballColor));
          //println(mps.string());
        }
      }
    }
    if(upgradeTab == "Neutron"){
      if(type == "Neutron"){
        if (money.isBiggerOrEqualTo(price)) {
          clickPower.Add(increase);
          money.Subtract(price);
          price.Multiply(new Number(1.1, 0));
          addCircle(neutronColor);
          numberOfNeutron++;
          if(startKøbt == false){
            startKøbt = true;
          }
        }
      }
    }
    if(upgradeTab == "Proton"){
      if(type == "Neutron"){
        if (money.isBiggerOrEqualTo(price)) {
          money.Subtract(price);
          price.Multiply(new Number(1.1, 0));
          addCircle(protonColor);
          numberOfProton++;
        }
      }
    }
  }
}
