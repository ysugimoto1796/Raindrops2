Bomb[] b = new Bomb[2];//array of bombs
int index = 1; //used to make raindrops appear on time intervals
Raindrops[] drops = new Raindrops[100];//array of candy
Catcher c1;// monster to eat candy
Scoreboard s1;//printing score
End e1;//end screen
boolean start;//start screen on off boolean
int oldtime;//used as timer to calcualate time after game starts
PImage For;//background forest
int count;//used to find how many times replayed

void setup() {
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Raindrops();
  }
  c1=new Catcher();
  s1=new Scoreboard();
  e1= new End();
  start= false;
  for (int i = 0; i < b.length; i++) {
    b[i] = new Bomb();
  }
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
     for (int i=0; i < b.length;i++) {
    b[i].load();
    b[i].shoot();
    b[i].explode(c1);
    b[i].reset();
    b[i].drop();
     }
    count+=1;//add times played every run
    for (int i=0; i < index;i++) {
      drops[i].load();
      drops[i].fall();
      drops[i].reset();
      drops[i].cat(c1);
    }
    c1.load();
    s1.printy(c1);//print score
   
    text("HP:"+c1.HP,width-100, 100);//print health

    if (millis()%8==0) { //new drop initiated every 8 milliseconds
      if (index< drops.length) {
        index+=1;
      }
    }
    if (c1.die>=3) {//game over
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
    c1.die=0;
    for (int i=0; i < b.length;i++) {
      b[i].location= new PVector(random(width), 0);
      b[i].ve= new PVector(0, random(1, 2));
     b[i].a= new PVector(0, (random(0, 0.1)));
     b[i].amax=0.1;
    }
  }
  c1.HP=3;
}

