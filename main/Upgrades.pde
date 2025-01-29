ClickUpgrade clickUpgrade1 = new ClickUpgrade(10, 0, 1, 1);

class ClickUpgrade {
  double price;
  int priceCifre;
  double increase;
  int increaseCifre;
  ClickUpgrade(double price, int cifre, double increase, int increaseCifre) {
    this.price = price;
    this.priceCifre = priceCifre;
    this.increase = increase;
    this.increaseCifre = increaseCifre;
  }
  void printPrice() {
    println(Double.toString(price)+suffixes[priceCifre]);
  }
  void fixNumbers() {
    while (price > 1000) {
      priceCifre++;
      price /= 1000;
    }
    while (price < 1 && priceCifre != 0) {
      priceCifre--;
      price *= 1000;
    }
    while (increase > 1000) {
      increaseCifre++;
      increase /= 1000;
    }
    while (increase < 1 && increaseCifre != 0) {
      increaseCifre--;
      increase *= 1000;
    }
  }
}
