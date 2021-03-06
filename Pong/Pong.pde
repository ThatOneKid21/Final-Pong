//Global Variables
private Paddle paddleLeft;
private Paddle paddleRight;
private Ball ball;
public boolean paused = false;
public boolean cheat = false;
public boolean Menu = false;
public boolean screen = true;
public boolean DarkMode = false;
public boolean OnePlayer = false;
public PFont f;

public void setup() {
  ball = new Ball(width/2, height/2, 50);
  ball.speedX = 13;
  ball.speedY = random(-3,3);
  paddleLeft = new Paddle(15, height/2, 30,200);
  paddleRight = new Paddle(width-15, height/2, 30,200);
  //printArray(PFont.list());
  f = createFont("OCR A Extended", 285);
  textFont(f);
}


public void draw() {
  fill(0, 20);
  noStroke();
  rect(0, 0, width, height);
  OnePlayer();
  DarkMode();
  paddleLeft.DarkMode();
  paddleRight.DarkMode();
  ball.DarkMode();
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
  StartScreen();
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
    if(key == 'd'){
  DarkMode = true;  
  }
  
  if(key == 'z'){
  DarkMode = false;
  }
  
  if(key == '1') {
    OnePlayer = true;
  }
    if(key == '2') {
    OnePlayer = false;
  }
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
  StartScreen = false;
  loop();
  }
}
