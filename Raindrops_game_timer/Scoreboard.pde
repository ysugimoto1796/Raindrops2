class Scoreboard {
  PVector l;
  Scoreboard() {
    l= new PVector(width, 100);
  }
  void printy(Catcher c) {//prints score
    textSize(50);
    text(c.score, l.x, l.y);
  }
  
}

