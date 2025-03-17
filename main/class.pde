class Clicker {
  private int x;
  private int y;

  private int sizeX;
  private int sizeY;
  private float currentSize = 0;
  float cirkelSize;

  private int clickValue;
  private int multi;

  private String type;

  Clicker(int x, int y, int sizeX, int sizeY, int clickValue, int multi, String type) {
    this.x = x;
    this.y = y;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.cirkelSize = sizeX * 0.5;
    this.clickValue = clickValue;
    this.multi = multi;
    this.type = type;
  }

  int getX() {
    return x;
  }
  int getY() {
    return y;
  }
  int getSizeX() {
    return sizeX;
  }
  int getSizeY() {
    return sizeY;
  }
  int getClickValue() {
    return clickValue;
  }
  int getMulti() {
    return multi;
  }
  String getType() {
    return type;
  }

  void tegnBoks() {
    fill(255);
    //rect(x, y, width/3,height/3*2);
  }
  void tegnCirkel() {
    fill(0);
    if(startKøbt){
      //circle(x + sizeX, y + sizeY/2, currentSize);
    }
  }
}
