void victory() {
  background(#FEAE69);
  textSize(45);
  
  fill(255);
  rect(300, 300, 200, 100);
  fill(0);
  text("YOU WIN", 300, 200);
  text("INTRO", 330, 365);

}

void victoryClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 300 && mouseY < 400) {
  mode = INTRO;    

  }
}
