class Bomb {
  PVector location;
    PVector ve;
    PVector a;
    PImage bomb;
    float scale;
    boolean blow;
    float amax;
    int run;
    Bomb() {
      amax=0.1;
      location= new PVector(random(width), 0);
      ve= new PVector(0, random(1, 2));
      a= new PVector(0, (random(0, amax)));
      blow=false;
      scale= 0.06;
      bomb= loadImage("bomb.png");
      bomb.resize(int(bomb.width*scale), int(bomb.height*scale));
    }
    void load() {

      image(bomb, location.x, location.y, bomb.width, bomb.height);
    }
    void shoot() {
      ve.add(a);
      location. add(ve);
      ve.limit(30);
    }
    void explode(Catcher c) {
        if (abs(c.l.x - location.x) < 50 && location.y >= height) {
          c.die+=1;
        c.HP=c.HP-1;
        }
                 println(c.die);
    }
    void reset() {
      if (location.y>height) {
        location.y=0;
        location.x=random(width);
        ve= new PVector(0, random(1, 3));
        a= new PVector(0, amax+=0.025);
        //      println(amax);
      }
    }
    void drop() {
      if (keyPressed &&   key=='r') {
        amax=0.1;
        location= new PVector(random(width), 0);
        ve= new PVector(0, random(1, 2));
        a= new PVector(0, (random(0, amax)));
        run+=1;
      }
    }

    void swag() {
      textAlign(CENTER, CENTER);
      textSize(200);
      text("SWAG", width/2, height/2);
    }
    void cat(Catcher c) {
      if (dist(location.x, location.y, c.l.x, c.l.y) < (bomb.width/2+c.r)) {
        location.y=0;
        location.x=random(width);
        ve= new PVector(0, random(1, 3));
        println("hit");
        //      println(l.x + c.l.x);
      }
    }
  }

