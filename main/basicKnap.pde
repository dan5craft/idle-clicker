ArrayList<Knap> Knapper = new ArrayList<Knap>();

class Knap {
  float x, y, sizeX, sizeY;
  String tekst;
  String titel;
  color farve, hoverFarve, klikFarve, tekstFarve;
  PFont Font;
  Knap(float x, float y, float sizeX, float sizeY, String titel, PFont Font, color tekstFarve, color farve, color hoverFarve, color klikFarve) {
    this.x = x;
    this.y = y;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.titel = titel;
    this.Font = Font;
    this.tekstFarve = tekstFarve;
    this.farve = farve;
    this.hoverFarve = hoverFarve;
    this.klikFarve = klikFarve;
    Knapper.add(this);
  }
  
  
  void tegnKnap() {
    tekst = titel;
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
  boolean musOver() {
    if (mouseX > x && mouseX < x+sizeX && mouseY > y && mouseY < y+sizeY) {
      return true;
    } else {
      return false;
    }
  }
  void buy() {
    upgradeTab=titel;
  }
}
