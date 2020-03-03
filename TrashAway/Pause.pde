void pause() {
 
  fill(255);
  textSize(34);
  noStroke();
  rect(300, 300, 200, 125);
  rect(300, 100, 200, 125);
  fill(0);
  text("RESUME", 335, 373);
  text("INTRO", 351, 167);
  
}

void pauseClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 300 && mouseY < 425) {
    mode = GAME;
  }
  if (mouseX > 300 && mouseX < 500 && mouseY > 100 && mouseY < 225) {
    mode = INTRO;
  }
  
}
