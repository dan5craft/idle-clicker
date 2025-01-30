ArrayList<Partikel> partikler;


class Partikel {
  float x, y, vx, vy, levetid;

  Partikel(float x, float y) {
    this.x = x;
    this.y = y;
    this.vx = random(-1, 1);
    this.vy = random(-1, 1);
    this.levetid = 255; // Starter med fuld levetid
  }

  void bevæg() {
    x += vx;
    y += vy;
    levetid -= 2;
  }

  void tegn() {
    fill(color(215,90,40), levetid); // Brug alpha til at fade ud
    noStroke();
    ellipse(x, y, 10, 10);
  }

  boolean erDød() {
    return levetid <= 0;
  }
}

class Energi extends Partikel {
  Energi(float x, float y) {
    super(x, y);
    this.vx = random(-3, 3);
    this.vy = random(-3, 3);
  }

  @Override
    void tegn() {
    fill(color(255,180,80), levetid);
    noStroke();
    ellipse(x, y, 5, 5);
  }
}
