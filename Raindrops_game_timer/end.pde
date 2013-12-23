class End{
  End() {
  }
  void end(Catcher c) { //end screen
    fill(0,255,0);
    rect(0, 0, width, height);
    println(c.score);
    fill(255);
    textAlign(CENTER);
    text("GAME OVER"+"\n"+c.score, width/2, height/2);
    for (int i=0; i < index;i++) {
      drops[i].away();
    }
  }
}


