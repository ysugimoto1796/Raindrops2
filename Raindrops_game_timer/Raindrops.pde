class Raindrops {
  PVector l;//location of raindrops
  PVector v;//velocity of raindrops
  PVector a;// acceleration of raindrops
  int r; //radius of each raindrops
  PImage candy;

  Raindrops() {
    l= new PVector(random(width), 0);
    v= new PVector(0, random(1, 2));
    a= new PVector(0, (random(0, 1)));
    r=int(random(4, 10));
//    candy= new PImage(;
  }
  void load() {
    fill(random(255), random(255), random(255));
    ellipse(l.x, l.y, r, r);
  }
  void fall() {
    v. add (a);
    l. add (v);
    v.limit(5);
  }
  void reset() {//resets the raindrops after they go off the screen
    if (l.y>height) {
      l.y=0;
      l.x=random(width);
      v= new PVector(0, random(1, 3));
    }
  }

  void cat(Catcher c) {//adds score every time the rain is caught
    if (dist(l.x, l.y, c.l.x, c.l.y) < (r/2+c.r/2)) {
      l.y=0;
      l.x=random(width);
      v= new PVector(0, random(1, 3));
      c.score += r;
    }
  }
    void away(){//ends game raindrops go back to top
    l.y=0;
    v.y=0;
    a.y=0;
    
  }
}

