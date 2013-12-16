int index = 1; //used to make raindrops appear on time intervals
Raindrops[] drops = new Raindrops[100];
Catcher c1;
Scoreboard s1;
End e1;
boolean start;
int oldtime;
PImage For;
int count;

void setup() {
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Raindrops();
  }
  c1=new Catcher();
  s1=new Scoreboard();
  e1= new End();
  start= false;
  For = loadImage("forest.jpg");
  size(For.width, For.height);
  count=1;
}
void draw() {

  background(For);
  if (!start) {
    fill(0);
    rect(0, 0, width, height);
    textAlign(CENTER, CENTER);
    fill(255);
    text("START", width/2, height/2);
  }
  else {
    count+=1;
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
  if (keyPressed && key=='a') {
    oldtime=millis();
    c1.score=0;
    for (int i=0; i < index;i++) {
      drops[i].l= new PVector(random(width), 0);
      drops[i].v= new PVector(0, random(1, 2));
      drops[i].a= new PVector(0, (random(0, 1)));
      drops[i].fall();
    }
    index= 1;
  }
}
void mousePressed() {
  start= true;
  oldtime=millis();
  if (count>1) {
    c1.score=0;
    for (int i=0; i < index;i++) {
      drops[i].l= new PVector(random(width), 0);
      drops[i].v= new PVector(0, random(1, 2));
      drops[i].a= new PVector(0, (random(0, 1)));
      drops[i].fall();
    }
    index= 1;
  }
}

