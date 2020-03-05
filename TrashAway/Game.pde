void game() {
  background(255);

  int i = 0;
  while (i < 48) {
    Brick b = myBricks.get(i);
    b.act();
    b.show();
    i++;
  }


  fill(#69D2E7);
  ball();
  paddle();

  textSize(40);
  text("Score: " + score, 100, 400);
  text("Lives: " + lives, 100, 300);
  
  fill(#69D2E7);
  rect(700, 550, 100, 50);
  fill(0);
  textSize(20);
  text("PAUSE", 723, 577);
  
  if (score == 1) {
   mode = VICTORY; 
  }
}

void gameClicks() {
  if (mouseX > 700 && mouseX < 800 && mouseY > 550 && mouseY < 600) {
   mode = PAUSE; 
  }
  
}

void ball() {
  noStroke();
  ellipse(bx, by, ballsize, ballsize);

  bx = bx + bvx;
  by = by + bvy;
  if (bx < 0 || bx > width) { //width = 800

    bvx = -bvx;
  }  
  if (by < 0 || by > height) { //height = 600

    bvy = -bvy;
  }
  if (dist(px, py, bx, by) < circlesize/2) 
  if (dist(px, py, bx, by) > ballsize/2) {
      bvx = (bx - px)/15;
      bvy = (by - py)/15;
    }

  if (by > 600) { 
    lives = lives - 1;
  }
  if (lives == 0) {
    highscore();
    lives = 3;
    px = width/2;
    mode = GAMEOVER;
  }
}
void paddle() {
  ellipse(px, py, circlesize, circlesize);
  if (rightKey) px = px + 5;
  if (leftKey)  px = px - 5;
}
