

void setup()
{
  
  size(1200, 800);
}
PVector ballPos = new PVector (750,750);
PVector fireVel = new PVector (0,0);
float  GRAVITY = 9.8f;
float count = 1.0f;
boolean spacePress = false;
void draw()
{
  background(0);
  fill(255,255,0);
  ellipse(ballPos.x,ballPos.y, 100, 100);

  if(spacePress)
  {
    fireVel.y += GRAVITY * 0.5;
  }
  else
  {
    spacePress = false;
      fireVel.y = 0.0f;
  }
  if(ballPos.y <= 750)
  {
    ballPos.y += fireVel.y;
  
    if(fireVel.y > 40 && ballPos.y > 710)
    {
      fireVel.y = -49.0f * count;
      count -= 0.02f;
    }
  }
  
}

void keyPressed()
{
  if (key == ' ')
  {
    spacePress = true;
    fireVel.y = -49.0f;
  }
}
