public class Paddle{

 private float x;
 private float y;
 final private float w;
 final private float h;
 private float speedY;
 private float speedX;
 public color c;
  
  Paddle(float tempX, float tempY, float tempW, float tempH){
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    speedY = 0;
    speedX = 0;
    c=(255);
  }

   private void move(){
    y += speedY;
    x += speedX;
  }

    void display(){
      if(DarkMode == false){
    fill(c);
    rect(x-w/2,y-h/2,w,h);
      }
  } 
  
    void DarkMode(){
      if (DarkMode == true) {
    fill(0);
    rect(x-w/2,y-h/2,w,h);
      }
  } 
  
  float left(){
    return x-w/2;
  }
  float right(){
    return x+w/2;
  }
  float top(){
    return y-h/2;
  }
  float bottom(){
    return y+h/2;
  }
}
