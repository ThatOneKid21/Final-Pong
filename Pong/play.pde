int scoreLeft = 0;
int scoreRight = 0;
String endScreen1 = "Player1 Wins";
String endScreen2 = "player2 Wns";
boolean StartScreen = true;
void scoreboard() {
  textSize(40);
  textAlign(CENTER);
  text(scoreRight, width/2+30, 30);
  text(scoreLeft, width/2-30, 30);
  if(DarkMode == true) {
  fill(225);
  }
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

void StartScreen() {
if (StartScreen == true) {
  fill(0);
  rect(0, 0, 1366, 768);
  textSize(80);
  textAlign(CENTER, CENTER);
  textFont(f, 55);
  fill(random(225), random(225), random(225));
  text("Welcome to pong", 0, 0, 1366, 768);
  textSize(20);
  text("(p) to pause, (ENTER) to resume, (1) for OnePlayer and (2) for TwoPlayer, (d) for DarkMode and (z) to turn off, (r) to reset, (c) for the person with the mouse ;) and (v) to turn off (Click to Continue)", width*1/3, height*1/2, width*1/3, 220);
  noLoop();
  }
}

void DarkMode() {
if(DarkMode == true) {
background(225);
  }
}
