int index = 1; //used to make raindrops appear on time intervals
Raindrops[] drops = new Raindrops[100];
Catcher c1;
Scoreboard s1;

boolean score;
void setup() {
  size(500, 500);
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Raindrops();
  }
  c1=new Catcher();
  s1=new Scoreboard();
  score= false;
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
 
  } 
}

