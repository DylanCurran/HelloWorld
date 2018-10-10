 PVector ball = new PVector(400,600);
 PVector ball2 = new PVector(800, 200);
 PVector initVel1 = new PVector(6,-4);
 PVector initVel2 = new PVector(2,3);
 PVector finalVel1 = new PVector(1,1);
 PVector finalVel2 =new PVector(1,1);
 PVector wallBounce1 = new PVector();
 PVector wallBounce2 = new PVector();
 PVector temp1 = new PVector();
 PVector temp2 = new PVector();
 float distance =0;
 float time =0;
 float mass1 =1;
 float mass2 =1;

void setup()
{
  size (1800,1800);
   
}

 
void draw()
{
 
  
  background(0);
  
  distance = sqrt(sq(ball2.y - ball.y) + sq(ball2.x - ball.x));
  if(distance < 250)
  {
    temp1 = initVel1;
    temp2 = initVel2;
    
    initVel1 = temp2;
    initVel2 = temp1;
   
   }
  fill(255,255,0);
  ellipse(ball.x,ball.y,250,250);
  
  fill(255,0,255);
  ellipse(ball2.x,ball2.y,250,250);
  
  if (ball.x + 125 > width || ball.x < 125)
  {
    initVel1.x *= -1;
  }
  if(ball.y +125 > height || ball.y < 125)
  {
    initVel1.y *= -1;
  }
  ball.x = ball.x + initVel1.x;
  ball.y = ball.y + initVel1.y;
  
  ball2.x = ball2.x + initVel2.x;
  ball2.y = ball2.y + initVel2.y;
  
  if (ball2.x + 125 > width || ball2.x < 125)
  {
    initVel2.x *= -1;
  }
  if(ball2.y +125 > height || ball2.y < 125)
  {
    initVel2.y *= -1;
  }
  
  frameRate(1000);
   
  
}
