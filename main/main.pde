import controlP5.*;

ControlP5 cp5;

Clicker clicker;

String[] suffixes = {"", " Thousand", " Million", " Billion", " Trillion", " Quadrillion", " Quintillion", " Sextillion", " Septillion", " Octillion", " Nonillion", " Decillion", " Undecillion", " Duodecillion", " Tredecillion", " Quattuordecillion", " Quindecillion", " Sexdecillion", " Septendecillion", " Octodecillion", " Novemdecillion", " Vigintillion", " Unvigintillion", " Duovigintillion", " Trevigintillion"};

Number money = new Number(1, 0);

Number mps = new Number(0, 0);
Number clickPower = new Number(1, 0);
Number clickPowerAdd = clickPower;

color knapFarve = color(100,100,100);
color knapHoverFarve = color(200,200,200);
color knapKlikFarve = color(50, 50, 50);

int numberOfElectron;
int numberOfNeutron;
int numberOfProton;

String skærm;

PFont font;

String moneyText;

float delta;
float deltaTime = millis();

int numberOfRings = 0;

String upgradeTab = "Neutron";

boolean startKøbt = false;

Number effectiveness = new Number(1,0);
float effectivenessNum = 1;
float test;

void setup(){
  fullScreen();
  cp5 = new ControlP5(this);
  font = createFont("Arial",width/50);
  partikler = new ArrayList<>();
  circles = new ArrayList<PVector>();
  originalPositions = new ArrayList<PVector>();
  colors = new ArrayList<Integer>();
  drawOrder = new ArrayList<Integer>();
  Knap neutronKnap = new Knap(width/16, height/7 - height/9, width/9, height/13, "Neutron", font, color(255), knapFarve, knapHoverFarve, knapFarve);
  Knap electronKnap = new Knap(width/16 + width/9, height/7 - height/9, width/9, height/13, "Electron", font, color(255), knapFarve, knapHoverFarve, knapFarve);
  Knap ProtonKnap = new Knap(width/16+ width/9*2, height/7 - height/9, width/9, height/13, "Proton", font, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade1 = new ClickUpgrade(new Number(1, 0), new Number(1, 0), width/16 + width/50, height/7 + height/50, width/3 - width/25, height/13, "Ring 1", "Electron", font, 1, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade2 = new ClickUpgrade(new Number(100, 0), new Number(5, 0), width/16 + width/50, height/7 + height/10 + height/50, width/3 - width/25, height/13, "Ring 2", "Electron", font, 2, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade3 = new ClickUpgrade(new Number(1, 1), new Number(25, 0), width/16 + width/50, height/7 + height/10*2 + height/50, width/3 - width/25, height/13, "Ring 3", "Electron", font, 3, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade4 = new ClickUpgrade(new Number(100, 1), new Number(100, 0), width/16 + width/50, height/7 + height/10*3 + height/50, width/3 - width/25, height/13, "Ring 4", "Electron", font, 4, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade5 = new ClickUpgrade(new Number(1, 2), new Number(1, 1), width/16 + width/50, height/7 + height/10*4 + height/50, width/3 - width/25, height/13, "Ring 5", "Electron", font, 5, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade6 = new ClickUpgrade(new Number(10, 2), new Number(5, 1), width/16 + width/50, height/7 + height/10*5 + height/50, width/3 - width/25, height/13, "Ring 6", "Electron", font, 6, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade7 = new ClickUpgrade(new Number(100, 2), new Number(20, 1), width/16 + width/50, height/7 + height/10*6 + height/50, width/3 - width/25, height/13, "Ring 7", "Electron", font, 7, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade8 = new ClickUpgrade(new Number(1, 3), new Number(100, 1), width/16 + width/50, height/7 + height/10*7 + height/50, width/3 - width/25, height/13, "Ring 8", "Electron", font, 8, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade9 = new ClickUpgrade(new Number(1, 0), new Number(1, 0), width/16 + width/50, height/7 + height/50, width/3 - width/25, height/13, "Neutron", "Neutron", font, 1, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade10 = new ClickUpgrade(new Number(100, 0), new Number(5, 0), width/16 + width/50, height/7 + height/10 + height/50, width/3 - width/25, height/13, "Neutron", "Neutron", font, 1, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade11 = new ClickUpgrade(new Number(1, 1), new Number(25, 0), width/16 + width/50, height/7 + height/10*2 + height/50, width/3 - width/25, height/13, "Neutron", "Neutron", font, 1, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade12 = new ClickUpgrade(new Number(100, 1), new Number(100, 0), width/16 + width/50, height/7 + height/10*3 + height/50, width/3 - width/25, height/13, "Neutron", "Neutron", font, 1, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade13 = new ClickUpgrade(new Number(1, 2), new Number(1, 1), width/16 + width/50, height/7 + height/10*4 + height/50, width/3 - width/25, height/13, "Neutron", "Neutron", font, 1, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade14 = new ClickUpgrade(new Number(10, 2), new Number(5, 1), width/16 + width/50, height/7 + height/10*5 + height/50, width/3 - width/25, height/13, "Neutron", "Neutron", font, 1, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade15 = new ClickUpgrade(new Number(100, 2), new Number(20, 1), width/16 + width/50, height/7 + height/10*6 + height/50, width/3 - width/25, height/13, "Neutron", "Neutron", font, 1, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade16 = new ClickUpgrade(new Number(1, 3), new Number(100, 1), width/16 + width/50, height/7 + height/10*7 + height/50, width/3 - width/25, height/13, "Neutron", "Neutron", font, 1, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade17 = new ClickUpgrade(new Number(1, 0), new Number(1, 0), width/16 + width/50, height/7 + height/50, width/3 - width/25, height/13, "Proton", "Proton", font, 1, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade18 = new ClickUpgrade(new Number(100, 0), new Number(5, 0), width/16 + width/50, height/7 + height/10 + height/50, width/3 - width/25, height/13, "Proton", "Proton", font, 1, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade19 = new ClickUpgrade(new Number(1, 1), new Number(25, 0), width/16 + width/50, height/7 + height/10*2 + height/50, width/3 - width/25, height/13, "Proton", "Proton", font, 1, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade20 = new ClickUpgrade(new Number(100, 1), new Number(100, 0), width/16 + width/50, height/7 + height/10*3 + height/50, width/3 - width/25, height/13, "Proton", "Proton", font, 1, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade21 = new ClickUpgrade(new Number(1, 2), new Number(1, 1), width/16 + width/50, height/7 + height/10*4 + height/50, width/3 - width/25, height/13, "Proton", "Proton", font, 1, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade22 = new ClickUpgrade(new Number(10, 2), new Number(5, 1), width/16 + width/50, height/7 + height/10*5 + height/50, width/3 - width/25, height/13, "Proton", "Proton", font, 1, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade23 = new ClickUpgrade(new Number(100, 2), new Number(20, 1), width/16 + width/50, height/7 + height/10*6 + height/50, width/3 - width/25, height/13, "Proton", "Proton", font, 1, color(255), knapFarve, knapHoverFarve, knapFarve);
  ClickUpgrade clickUpgrade24 = new ClickUpgrade(new Number(1, 3), new Number(100, 1), width/16 + width/50, height/7 + height/10*7 + height/50, width/3 - width/25, height/13, "Proton", "Proton", font, 1, color(255), knapFarve, knapHoverFarve, knapFarve);
  skærm = "hovedside";
  defaultValues();
  opretKnapper();
  clicker = new Clicker(width/5*4,height/2,width/7,height/7*4,1,1,"default");
}

void draw(){
  //tid mellem frames i sekunder (VIGTIGT)
  delta = (millis()-deltaTime)/1000;
  deltaTime = millis();
  Number deltaNumber = new Number(delta, 0);
  //tilføjer money per sekund (MPS) til money ganget med sekunder selvfølgelig
  money.Add(mps.returnMultiply(deltaNumber));
  //background(202, 112, 20);
  for(int i = 0; i < stars.size(); i++){
    if(stars.get(i).getX() >= width){
      stars.remove(i);
    }
    else if(stars.get(i).getY() >= height){
      stars.remove(i);
    }
  }
  background(0);
  for (BackgroundMaker star : stars) {
    star.drawBackground();
    star.move();
  }
    for(int i = stars.size(); i < 100; i++){
    new BackgroundMaker(random(-width*2, 0), random(-height*2, 0), random(3,5), 1);
  }
  
  clicker.tegnBoks();
  noFill();
  stroke(255);
  
  for(int i = 0; i < numberOfRings; i++){
    circle(width/5*4, height/2, (i * width/60 + width/20)*2);
  }
  
  noStroke();
  for (int i : drawOrder) {
    fill(colors.get(i), 150); // Color with transparency
    circle(circles.get(i).x, circles.get(i).y, width/40);
  }
  
  
  
  noStroke();
  clicker.tegnCirkel();
  for (int i = partikler.size() - 1; i >= 0; i--) {
    Partikel p = partikler.get(i);
    p.bevæg();
    p.tegn();
    if (p.erDød()) {
      partikler.remove(i);
    }
  }
  for (Electron ball : balls) {
    ball.update();
    ball.display();
  }
  if(skærm == "hovedside"){
    hovedside();
  }
  if(abs(numberOfNeutron-numberOfProton)>=5){
    if(effectivenessNum > 0){
      effectivenessNum = 1-(abs(numberOfNeutron-numberOfProton)/10.0);
      effectivenessNum = effectivenessNum * 1.8;
      effectiveness = new Number(effectivenessNum, 0);
    }
  }
  else{
    effectivenessNum = 1;
    effectiveness = new Number(1, 0);
  }
}

void defaultValues(){
  
}

//giver en afrundet double med et defineret antal cifre
double roundDouble(double tal, int faktor) {
  tal = Math.round(tal*pow(10, faktor));
  return tal/pow(10, faktor);
}
