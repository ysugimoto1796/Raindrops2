class End{
  int finalScore;
  End() {
  }
  void end(Catcher c) { 
    fill(0,255,0);
    rect(0, 0, width, height);
    finalScore=c.score;
    println(finalScore);
    fill(255);
    textAlign(CENTER);
    text("GAME OVER"+"\n"+finalScore, width/2, height/2);
    for (int i=0; i < index;i++) {
      drops[i].away();
    }
  }
}


