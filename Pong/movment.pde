void ball_movment() {
  if (ball.right() > width) { //if stuff between () is true, execute code between {}
    ball.speedX = -ball.speedX;
  }
  if (ball.left() < 0) {
    ball.speedX = -ball.speedX;
  }

  if (ball.bottom() > height) {
    ball.speedY = -ball.speedY;
  }

  if (ball.top() < 0) {
    ball.speedY = -ball.speedY;
  }
 }

void paddle_movment() {
  if (paddleLeft.bottom() > height) {
    paddleLeft.y = height-paddleLeft.h/2;
  }

  if (paddleLeft.top() < 0) {
    paddleLeft.y = paddleLeft.h/2;
  }
    
  if (paddleRight.bottom() > height) {
    paddleRight.y = height-paddleRight.h/2;
  }

  if (paddleRight.top() < 0) {
    paddleRight.y = paddleRight.h/2;
  }
}

void collision() {
  if ( ball.left() < paddleLeft.right() && ball.y > paddleLeft.top() && ball.y < paddleLeft.bottom()){
    ball.speedX = -ball.speedX;
    ball.speedY = map(ball.y - paddleLeft.y, -paddleLeft.h/2, paddleLeft.h/2, -10, 10);
  }if ( ball.right() > paddleRight.left() && ball.y > paddleRight.top() && ball.y < paddleRight.bottom()) {
    ball.speedX = -ball.speedX;
    ball.speedY = map(ball.y - paddleRight.y, -paddleRight.h/2, paddleRight.h/2, -10, 10);
  }
}
