int index = 1; //used to make raindrops appear on time intervals
Raindrops[] drops = new Raindrops[100];
Catcher c1;
Scoreboard s1;
int finalScore;
void setup() {
  size(500, 500);
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Raindrops();
  }
  c1=new Catcher();
  s1=new Scoreboard();
}
void draw() {
  background(255);
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
  if (millis() > 10000){//game over
  rect(0,0,width,height);
   finalScore=c1.score;
   println(finalScore);
   fill(255);
   textAlign(CENTER);
   text("GAME OVER"+"\n"+finalScore,width/2,height/2);
     for (int i=0; i < index;i++) {
    drops[i].away();
     }
  } 
}

