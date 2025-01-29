class Clicker{
  private int x;
  private int y;
  
  private int sizeX;
  private int sizeY;
  private float currentSizeX;
  private float currentSizeY;
  
  private int clickValue;
  private int multi;
  
  private String type;
  
  Clicker(int x, int y, int sizeX, int sizeY, int clickValue, int multi, String type) {
    this.x = x;
    this.y = y;
    this.sizeX = sizeX;
    this. sizeY = sizeY;
    this.currentSizeX = sizeX * 0.75;
    this.currentSizeY = sizeY * 0.75;
    this.clickValue = clickValue;
    this.multi = multi;
    this.type = type;
  }
  
  int getX() { return x; }
  int getY() { return y; }
  int getSizeX() { return sizeX; }
  int getSizeY() { return sizeY; }
  int getClickValue() { return clickValue; }
  int getMulti() { return multi; }
  String getType() { return type; }
  
  void tegnBoks(){
    fill(255);
    rect(x, y, sizeX, sizeY);
  }
  void tegnCirkel(){
    fill(0);
    float cirkelSizeX = sizeX * 0.75;
    float cirkelSizeY = sizeY * 0.75;
    currentSizeX = lerp(currentSizeX,cirkelSizeX,0.1);
    currentSizeY = lerp(currentSizeY,cirkelSizeY,0.1);
    ellipse(x + sizeX/2, y + sizeY/2, currentSizeX, currentSizeY);
  }
}
