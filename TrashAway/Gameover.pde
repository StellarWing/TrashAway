void gameover() {
  background(#8C468F);
  
  fill(255);
  rect (275, 450, 200, 100); //reset button
  rect (275, 250, 200, 100); //intro button
  fill (0);
  textSize(37);
  text ("Retry", 335, 510);
  text ("Intro", 335, 310);
  text("Highscore: " + highscore, 100, 100);
}

void gameOverClicks() {
  
  if (mouseX > 275 && mouseX < 475 && mouseY > 450 && mouseY < 550) {
   
    setup();
    mode = GAME; 

   
  }
  if (mouseX > 275 && mouseX < 475 && mouseY > 250 && mouseY < 350) {
    
   setup();
   mode = INTRO;
   
}
}
void highscore() {
  if (score > highscore) {
    highscore = score;
    score = 0;
  }
}
