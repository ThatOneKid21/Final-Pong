public void cheats() {
  if(cheat == true) {
    aimBot();
  }
}

public void aimBot(){
  if (cheat == true) {
ball.x = mouseX;
ball.y = mouseY;
  }
}
