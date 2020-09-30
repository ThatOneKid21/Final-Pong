void cheats() {
  if(cheat == true) {
    aimBot();
  }
}

void aimBot(){
  if (cheat == true) {
ball.x = mouseX;
ball.y = mouseY;
  }
}
