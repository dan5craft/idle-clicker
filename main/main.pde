import controlP5.*;

ControlP5 cp5;

Clicker clicker;

String[] suffixes = {" ", " Thousand", " Million", " Billion", " Trillion", " Quadrillion", " Quintillion", " Sextillion", " Septillion", " Octillion", " Nonillion", " Decillion", " Undecillion", " Duodecillion", " Tredecillion", " Quattuordecillion", " Quindecillion", " Sexdecillion", " Septendecillion", " Octodecillion", " Novemdecillion", " Vigintillion", " Unvigintillion", " Duovigintillion", " Trevigintillion"};

Number money = new Number(0, 0);

Number mps = new Number(0, 0);
Number clickPower = new Number(1, 0);

color knapFarve = color(100,100,100);
color knapHoverFarve = color(200,200,200);

String skærm;

PFont font;

String moneyText;

float delta;
float deltaTime = millis();

void setup(){
  fullScreen();
  cp5 = new ControlP5(this);
  font = createFont("Arial",width/50);
  ClickUpgrade clickUpgrade1 = new ClickUpgrade(new Number(1, 0), new Number(1, 0), width/16 + width/50, height/5 + height/50, width/3 - width/25, height/13, "Upgrade 1", font, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade2 = new ClickUpgrade(new Number(1, 1), new Number(1, 1), width/16 + width/50, height/5 + height/10 + height/50, width/3 - width/25, height/13, "Upgrade 2", font, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade3 = new ClickUpgrade(new Number(1, 2), new Number(1, 2), width/16 + width/50, height/5 + height/10*2 + height/50, width/3 - width/25, height/13, "Upgrade 3", font, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade4 = new ClickUpgrade(new Number(1, 3), new Number(1, 3), width/16 + width/50, height/5 + height/10*3 + height/50, width/3 - width/25, height/13, "Upgrade 4", font, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade5 = new ClickUpgrade(new Number(1, 4), new Number(1, 4), width/16 + width/50, height/5 + height/10*4 + height/50, width/3 - width/25, height/13, "Upgrade 5", font, color(255), knapFarve, knapHoverFarve, knapFarve);
  skærm = "hovedside";
  defaultValues();
  opretKnapper();
  clicker = new Clicker(width/5*3,height/5*1,width/3,height/3*2,1,1,"default");
}

void draw(){
  //tid mellem frames i sekunder (VIGTIGT)
  delta = (millis()-deltaTime)/1000;
  deltaTime = millis();
  Number deltaNumber = new Number(delta, 0);
  //tilføjer money per sekund (MPS) til money ganget med sekunder selvfølgelig
  money.Add(mps.returnMultiply(deltaNumber));
  background(202, 112, 20);
  clicker.tegnBoks();
  clicker.tegnCirkel();
  if(skærm == "hovedside"){
    hovedside();
  }
}

void defaultValues(){
  
}

//giver en afrundet double med et defineret antal cifre
double roundDouble(double tal, int faktor) {
  tal = Math.round(tal*pow(10, faktor));
  return tal/pow(10, faktor);
}
