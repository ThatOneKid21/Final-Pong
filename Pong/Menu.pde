public void Menu() {
  if(key == 'm'){
  Menu = true;
  }
if(Menu == true){
  rect(width*1/2, height*1/2, 200, 400);
  }
}

public void Reset() {
ball.x = width/2;
ball.y = height/2;
scoreLeft = 0;
scoreRight = 0;
loop();
}

void paused() {
if ( key == 'p' )
noLoop();
if ( keyCode == ENTER )
loop();
}

void screen() {
if (screen == true) {
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
