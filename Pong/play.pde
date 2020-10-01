int scoreLeft = 0;
int scoreRight = 0;
String endScreen1 = "Player1 Wins";
String endScreen2 = "player2 Wns";

void scoreboard() {
  textSize(40);
  textAlign(CENTER);
  text(scoreRight, width/2+30, 30);
  text(scoreLeft, width/2-30, 30);
  if (ball.right() > width) {
    scoreLeft = scoreLeft + 1;
    ball.x = width/2;
    ball.y = height/2;
}
  if (ball.left() < 0) {
    scoreRight = scoreRight + 1;
    ball.x = width/2;
    ball.y = height/2;
}
  if(scoreRight == 10){
  fill(0);
  rect(0, 0, 1366, 768);
  textSize(80);
  textAlign(CENTER, CENTER);
  textFont(f, 55);
  fill(random(225), random(225), random(225));
  text("Player2 Wins", 0, 0, 1366, 768);
  noLoop();
}
    if(scoreLeft == 10){
  fill(0);
  rect(0, 0, 1366, 768);
  textSize(80);
  textAlign(CENTER, CENTER);
  textFont(f, 55);
  fill(random(225), random(225), random(225));
  text("Player1 Wins", 0, 0, 1366, 768);
  noLoop();
  }
}
