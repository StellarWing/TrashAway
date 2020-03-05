void intro() {
  background(#AAC9F2);

  fill(255);
  noStroke();
  stroke(5);
  rect(325, 400, 200, 100); //START 

  fill(0);
  textSize(35);
  text("START", 348, 459);
  
  strokeWeight(5);
  line(600, 350, 200, 350); //track for paddle
  line(600, 240, 200, 240); //track for ball
  ellipse(sliderx, 350, 30, 30); //ball point for paddle
  ellipse(slidery, 240, 30, 30); //ball point for ball

  text("PADDLE SIZE", 298, 320);
  text("BALL SIZE", 308, 210);

  if (mousePressed) { //slider for paddle
    if (dist(sliderx, 350, mouseX, mouseY) < 15) {
      sliderx = mouseX;

      if (sliderx < 200) {
        sliderx = 200;
      }
      if (sliderx > 600) {
        sliderx = 600;
      }
    }
    circlesize = map(sliderx, 200, 600, 100, 200);
  }

  if (mousePressed) { //slider for ball
    if (dist(slidery, 240, mouseX, mouseY) < 15) {
      slidery = mouseX;

      if (slidery < 200) {
        slidery = 200;
      }
      if (slidery > 600) {
        slidery = 600;
      }
    }
  }
  ballsize = map(slidery, 200, 600, 20, 80);
}

  void introClicks() {

    if (mouseX > 325 && mouseX < 525 && mouseY > 400 && mouseY < 500) {
      mode = GAME; //START GAME
    }
  }
