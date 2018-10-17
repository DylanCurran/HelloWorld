void setup()
{
  size(800,800);
  
  guard = loadImage("guard_sprite.jpg");
}
PImage guard = createImage(100,100,0);
int value = 3;
int scaler = 1;
PVector player = new PVector(400,400);


void draw()
{
  background(0);
  player.x += value;
  
  
   
 
   
    
   if(player.x < guard.width  && value < 0) 
  {
    
    player.x = 1;
    value *= -1;
  }
  else if(player.x >= width - guard.width && value > 0)
  {
    player.x = width;
    value *= -1;
  }
  
 
  if(value < 0)
  {
    
    pushMatrix();
    scale(-scaler,1.0);
    image(guard,-player.x,100);
    popMatrix();
    arc(player.x - guard.width + 30,player.y - guard.height / 2,280,280,PI - THIRD_PI,  PI + THIRD_PI, PIE);
  }
  else
  {
     image(guard,player.x,100);
     arc(player.x + guard.width - 30,player.y - guard.height / 2,280,280, - THIRD_PI,  THIRD_PI, PIE);
  }
  
}
