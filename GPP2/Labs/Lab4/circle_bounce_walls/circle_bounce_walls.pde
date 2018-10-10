void setup()
{
  size (800,800);
   
}
 PVector ball = new PVector(width/2,height/2);
 int trackX = 8;
 int trackY = 6;
void draw()
{
 
  background(0);
  fill(255,255,0);
  ellipse(ball.x,ball.y,50,50);
  
  if (ball.x + 25 > width || ball.x < 25)
  {
    trackX *= -1;
  }
  if(ball.y +25 > height || ball.y < 25)
  {
    trackY *= -1;
  }
  ball.x = ball.x + trackX;
  ball.y = ball.y + trackY;
  
}
