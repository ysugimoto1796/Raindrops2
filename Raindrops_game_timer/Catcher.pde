class Catcher {//thing to "catch" the raindrops
  PVector l;//location of catcher
  int r;//radius of catcher
  int s;//velocity of catcher
  int score;
  PImage poke;
  float scale;
  int HP;//health left
  Catcher() {
    scale= 0.09;
    r=60;
    l= new PVector(mouseX, height-100);
    score = 0;
    poke= loadImage("pokemon.png");
    imageMode(CENTER);
    poke.resize(int(poke.width*scale), int(poke.height*scale));
    HP=3;
  }
  void load() {
    noStroke();
    fill(0, 100, 0,0);
    image(poke, mouseX, height-50, poke.width, poke.height);
    l= new PVector(mouseX, height-50);//catcher moves based on mouse
    ellipse(l.x, l.y, r, r);
  }
}

