void setup()
{
  size(800,800);
  
  guard = loadImage("guard_sprite.png");
}
PImage guard = createImage(100,100,0);
int value = 3;
int scaler = 1;
PVector player = new PVector(400,400);


void draw()
{
  background(0);
  player.x += value;
  
   
 
   
    
   if(player.x < 100 && value < 0) 
  {
    
    player.x = 1;
    value *= -1;
  }
  else if(player.x >= width - 100 && value > 0)
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
    
  }
  else
  {
     image(guard,player.x,100);
  }
  
}
