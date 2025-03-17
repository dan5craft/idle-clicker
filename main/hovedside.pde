Button upgrade1, upgrade2, upgrade3, upgrade4, upgrade5;


int upgrade1num, upgrade2num, upgrade3num, upgrade4num, upgrade5num;

void hovedside() {
  fill(255);
  rect(width/16, height/9, width/3, height/8*7);
  for (int i=0; i<clickUpgrades.size(); i++) {
    ClickUpgrade upgrade = clickUpgrades.get(i);
    upgrade.tegnKnap();
  }
  for (int i=0; i<Knapper.size(); i++) {
    Knap knap = Knapper.get(i);
    knap.tegnKnap();
  }
  textSize(50);
  textAlign(CENTER);
  //text(money,width/2,height/8);
  text(money.string(), width/2, height/8);
  text("Click power: "+clickPower.string(),width/5*4-width/30,height/8);
  text("Neutrons: "+numberOfNeutron+" Electron: "+numberOfElectron+" Proton: "+numberOfProton,width/5*4-width/30,height/8+50);
  text("Click power: "+effectiveness,width/5*4-width/30,height/8+100);
  
}

void opretKnapper() {
  //upgrade1 = cp5.addButton("upgrade1")
  //  .setPosition(width/16 + width/50,height/5 + height/50)
  //  .setSize(width/3 - width/25, height/15)
  //  .setFont(font)
  //  .setLabel("Upgrade 1")
  //  .setColorBackground(knapFarve)
  //  .setColorForeground(knapHoverFarve)
  //  .setColorActive(knapFarve)
  //  .onClick(new CallbackListener() {
  //    public void controlEvent(CallbackEvent event) {
  //      if(money.isBiggerOrEqualTo(clickUpgrade1.price)){
  //        clickPower.Add(clickUpgrade1.increase);
  //        money.Subtract(clickUpgrade1.price);
  //        clickUpgrade1.price.Multiply(new Number(1.5, 0));
  //      }
  //    }
  //  });
  //upgrade2 = cp5.addButton("upgrade2")
  //  .setPosition(width/16 + width/50, height/5 + height/15 + height/50*2)
  //  .setSize(width/3 - width/25, height/15)
  //  .setFont(font)
  //  .setLabel("Upgrade 2")
  //  .setColorBackground(knapFarve)
  //  .setColorForeground(knapHoverFarve)
  //  .setColorActive(knapFarve)
  //  .onClick(new CallbackListener() {
  //  public void controlEvent(CallbackEvent event) {
  //    upgrade2num += 1;
  //  }
  //}
  //);
  //upgrade3 = cp5.addButton("upgrade3")
  //  .setPosition(width/16 + width/50, height/5 + height/15*2 + height/50*3)
  //  .setSize(width/3 - width/25, height/15)
  //  .setFont(font)
  //  .setLabel("Upgrade 3")
  //  .setColorBackground(knapFarve)
  //  .setColorForeground(knapHoverFarve)
  //  .setColorActive(knapFarve)
  //  .onClick(new CallbackListener() {
  //  public void controlEvent(CallbackEvent event) {
  //    upgrade3num += 1;
  //  }
  //}
  //);
  //upgrade4 = cp5.addButton("upgrade4")
  //  .setPosition(width/16 + width/50, height/5*2 + height/50*4)
  //  .setSize(width/3 - width/25, height/15)
  //  .setFont(font)
  //  .setLabel("Upgrade 4")
  //  .setColorBackground(knapFarve)
  //  .setColorForeground(knapHoverFarve)
  //  .setColorActive(knapFarve)
  //  .onClick(new CallbackListener() {
  //  public void controlEvent(CallbackEvent event) {
  //    upgrade4num += 1;
  //  }
  //}
  //);
  //upgrade5 = cp5.addButton("upgrade5")
  //  .setPosition(width/16 + width/50, height/5 + height/15*4 + height/10)
  //  .setSize(width/3 - width/25, height/15)
  //  .setFont(font)
  //  .setLabel("Upgrade 5")
  //  .setColorBackground(knapFarve)
  //  .setColorForeground(knapHoverFarve)
  //  .setColorActive(knapFarve)
  //  .onClick(new CallbackListener() {
  //  public void controlEvent(CallbackEvent event) {
  //    upgrade5num += 1;
  //  }
  //}
  //);
}
