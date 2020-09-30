//Global Variables
Paddle paddleLeft;
Paddle paddleRight;
Ball ball;
boolean paused = false;
boolean cheat = false;
boolean Menu = false;
PFont f;

void setup() {
  ball = new Ball(width/2, height/2, 50);
  ball.speedX = 5;
  ball.speedY = random(-3,3);
  paddleLeft = new Paddle(15, height/2, 30,200);
  paddleRight = new Paddle(width-15, height/2, 30,200);
  size(500, 300);
  printArray(PFont.list());
  f = createFont("Comic Sans MS", 100);
  textFont(f);
}


void draw() {
  background(0);
  //Menu();
  ball.move();
  ball.display();
  ball_movment();
  collision();
  paddle_movment();
  paddleLeft.move();
  paddleLeft.display();
  paddleRight.move();
  paddleRight.display();
  scoreboard();
  }
  
void keyPressed () {
  if(keyCode == UP){
    paddleRight.speedY=-3;
  }
  if(keyCode == DOWN){
    paddleRight.speedY=3;
  }
  if(key == 'w'){
    paddleLeft.speedY=-3;
  }
  if(key == 's'){
    paddleLeft.speedY=3;
  }
  if(key == 'm') {
    //Menu();
  }
  if(key == 'c'){
  cheat = true;
  }
    if(key == 'v'){
  cheat = false;
  }
    if(key == 'r'){
  Reset();
  }
  paused();
}

void keyReleased(){
  if(keyCode == UP){
    paddleRight.speedY=0;
  }
  if(keyCode == DOWN){
    paddleRight.speedY=0;
  }
  if(key == 'w'){
    paddleLeft.speedY=0;
  }
  if(key == 's'){
    paddleLeft.speedY=0;
  }
  if(key == 'p'){
  paused = false;
  }
}
void mousePressed () {
}
