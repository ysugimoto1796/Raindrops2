class Scoreboard {
  PVector l;
  Scoreboard() {
    l= new PVector(width/2, 100);
  }
  void printy(Catcher c) {//prints score
  fill(255,0,0);
    textSize(50);
    text(c.score, l.x, l.y);
  }
  
}

