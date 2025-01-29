import controlP5.*;

ControlP5 cp5;

Clicker clicker;

String[] suffixes = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"};
int suffix = 0;
double money = 0;
int c;

double mps = 1;
double clickPower = 1;

color knapFarve = color(100,100,100);
color knapHoverFarve = color(200,200,200);

String skærm;

PFont font;

String moneyText;

void setup(){
  fullScreen();
  cp5 = new ControlP5(this);
  font = createFont("Arial",width/50);
  skærm = "hovedside";
  defaultValues();
  opretKnapper();
  clicker = new Clicker(width/5*3,height/5*1,width/3,height/3*2,1,1,"default");
}

void draw(){
  while (money > 1000) {
    suffix++;
    money /= 1000;
    mps /= 1000;
    clickPower /= 1000;
  }
  while (money < 1 && suffix != 0) {
    suffix--;
    money *= 1000;
    mps *= 1000;
    clickPower *= 1000;
  }
  if (money < 10) {
    c = 2;
  } else if (money < 100) {
    c = 1;
  } else {
    c = 0;
  }
  if (c != 0) {
    moneyText = Double.toString(roundDouble(money, c));
  } else {
    moneyText = str((int)money);
  }
  background(202, 112, 20);
  clicker.tegnBoks();
  clicker.tegnCirkel();
  if(skærm == "hovedside"){
    hovedside();
  }
}

void defaultValues(){
  
}

double roundDouble(double tal, int faktor) {
  tal = Math.round(tal*pow(10, faktor));
  return tal/pow(10, faktor);
}
