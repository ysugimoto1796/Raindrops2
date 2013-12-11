class Catcher {//thing to "catch" the raindrops
  PVector l;//location of catcher
  int r;//radius of catcher
  int s;//velocity of catcher
  int score;

  Catcher() {
    r=30;
    l= new PVector(mouseX, height-100);
    score = 0;
  }
  void load() {
    fill(0, 100, 0);
    l= new PVector(mouseX, height-100);//catcher moves based on mouse
    ellipse(l.x, l.y, r, r);
  }
  //void grow(Raindrops[] drops) {
  //  for (Raindrops d : drops) {
  //    if (abs(d.l.x + l.x) < r+d.r) {
  //      d.l.y=0;
  //      d.l.x=random(width);
  //      d.v= new PVector(0, random(1, 3));
  //      println(d.l.x + l.x);
  //    }
  //  }
  //}
}

