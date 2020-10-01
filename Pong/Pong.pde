//Global Variables
private Paddle paddleLeft;
private Paddle paddleRight;
Ball ball;
public boolean paused = false;
public boolean cheat = false;
public boolean Menu = false;
public boolean screen = true;
public PFont f;

public void setup() {
  fullScreen();
  ball = new Ball(width/2, height/2, 50);
  ball.speedX = 13;
  ball.speedY = random(-3,3);
  paddleLeft = new Paddle(15, height/2, 30,200);
  paddleRight = new Paddle(width-15, height/2, 30,200);
  printArray(PFont.list());
  f = createFont("OCR A Extended", 285);
  textFont(f);
}


public void draw() {
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
  
public void keyPressed () {
  if(keyCode == UP){
    paddleRight.speedY=-7;
  }
  if(keyCode == DOWN){
    paddleRight.speedY=7;
  }
  if(key == 'w'){
    paddleLeft.speedY=-7;
  }
  if(key == 's'){
    paddleLeft.speedY=7;
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

public void keyReleased(){
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
}
void mousePressed () {
  if (mousePressed == true) {
  screen = false;
  }
}
