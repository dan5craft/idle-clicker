import controlP5.*;

ControlP5 cp5;

Clicker clicker;

double money = 0;

color knapFarve = color(100,100,100);
color knapHoverFarve = color(200,200,200);

String skærm;

PFont font;

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
  background(202, 112, 20);
  clicker.tegnBoks();
  clicker.tegnCirkel();
  if(skærm == "hovedside"){
    hovedside();
  }
}

void defaultValues(){
  
}
