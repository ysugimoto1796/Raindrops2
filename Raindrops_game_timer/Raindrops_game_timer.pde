int index = 1; //used to make raindrops appear on time intervals
Raindrops[] drops = new Raindrops[100];
Catcher c1;
Scoreboard s1;
End e1;
boolean start;
int oldtime;
PImage For;

void setup() {
  size(500, 500);
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Raindrops();
  }
  c1=new Catcher();
  s1=new Scoreboard();
  e1= new End();
  start= false;
  For = loadImage("forest.jpg");
}
void draw() {
  size(For.width, For.height);
  background(For);
  if (!start) {
    fill(0);
    rect(0, 0, width, height);
    textAlign(CENTER);
    fill(255);
    text("START", width/2, height/2);
  }
  else {
    for (int i=0; i < index;i++) {
      drops[i].load();
      drops[i].fall();
      drops[i].reset();
      drops[i].cat(c1);
    }
    c1.load();
    s1.printy(c1);

    if (millis()%8==0) { //new drop initiated every 8 milliseconds
      if (index< drops.length) {
        index+=1;
      }
    }
    if (millis()-oldtime > 15000) {//game over
      e1. end(c1);
    }
  }
}
  void mousePressed(){
    start= true;
    oldtime=millis();
}

