 
 
 


 

 float distance =0;
 float time =0;
 
 float xMultiplier;
 float yMultiplier;
 PVector temp1 = new PVector();
 PVector temp2 = new PVector();


void setup()
{
  size (3200,2000);
 
}

class Ball
{
  float mass;
  float radius;
  PVector initVel = new PVector();
  PVector ball = new PVector();
  PVector position = new PVector();
  
 Ball(float x, float y, float r)
 {
  position = new PVector (x,y);
  initVel = PVector.random2D();
  radius = r;
  mass = radius * 0.1;
  }
  void update()
  {
    position.add(initVel);
  }

  void checkBoundaryCollision()
  {
  if (position.x + radius > width || position.x < radius)
        {
          initVel[i].x *= -1;
        }
        if(position.y + radius > height || position.y < radius)
        {
          initVel[i].y *= -1;
        }
        
  }
  void checkCollision(Ball ball)
  {
    if (PVector.sub(this.position, ball.position).mag() <= ball.radius + this.radius)
    {
      resolveCollision(ball);
    }
  
  }

  void resolveCollision(Ball ball)
  {
    float m1 = this.mass;
    float m2 = ball.mass;
  
    PVector v1i = this.initVel;
    PVector v2i = ball.initVel;
  
    this.initVel = (m1 - m2 / m1 + m2) * v1i + (2 * m2 * v2i) / (m1 + m2);
    ball.initVel = PVector.mult(v2i, PVector.div((m1 + m2), PVector.sub(m2, m1)) +  PVector.div(m1 + m2,PVector.mult(2.0f, m1, v1i));
  }

}
 Ball ball1 = new Ball(50,70,10);
 Ball ball2 = new Ball(90, 110, 20);
 Ball ball3 = new Ball (120, 40, 25);
 
   
 
void draw()
{
 
  
  background(0);
  
  
  
    for(int i = 0; i < ball.length; i++)
    {
      ball[i].update();
      ball[i].display();
      ball[i].checkBoundaryCollision();
      for(int j = j+1; j< ball.length; j++)
      {
        ball[i].checkCollision();
      }
      fill(random(255),random(255),random(255));
      ellipse(ball[i].x,ball[i].y,250,250);
      noLoop();
    }
    for(int i = 0; i < 10; i++ )
    {
       
        ball[i].x = ball[i].x + initVel[i].x;
        ball[i].y = ball[i].y + initVel[i].y;
      for(int x = 0; x < 10; x++)
      {
        distance = sqrt(sq(ball[x].y - ball[i].y) + (ball[x].y - ball[i].y));
        if(distance < 250)
        {
          temp1 = ball[i];
          temp2 = ball[x];
          ball[i] = temp2;
          ball[x] = temp1;
        }
      }
      
    }
   
   
  
  
 
  
  
  
 frameRate(1500);
   
  
}
