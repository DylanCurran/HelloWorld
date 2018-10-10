void setup()
{
  size (800,800);
   
}
 PVector ball = new PVector(width/2,height/2);
 PVector ball2 = new PVector(width/3 * 2,height/3 * 2);
 int trackX = 8;
 int trackY = 6;
 int trackX2 = -6;
 int trackY2 = -8;
 float distance =0;
 float time =0;
void draw()
{
 
  background(0);
  
  distance = sqrt(sq(ball2.y - ball.y) + sq(ball2.x - ball.x));
  if(distance > 50)
  {
   
      fill(255,255,0);
    
  }
 else
  {
    time = millis();
    if (time + 3000 <= millis())
    {
    fill(255,0,0);
    }
    
    
  }
  ellipse(ball.x,ball.y,50,50);
  if(distance > 50)
  {
    fill(255,0,255);
  }
  else
  {
   
      fill(255,0,0); 
    
   
  }
  ellipse(ball2.x,ball2.y,50,50);
  
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
  
  if (ball2.x + 25 > width || ball2.x < 25)
  {
    trackX2 *= -1;
  }
  if(ball2.y +25 > height || ball2.y < 25)
  {
    trackY2 *= -1;
  }
  ball2.x = ball2.x + trackX2;
  ball2.y = ball2.y + trackY2;
  
}
