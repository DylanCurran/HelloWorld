void setup()
{
  size(800,800);
  
}
int value = 0;
int radius = 30;
PVector player = new PVector(400,400);
void keyPressed()
{
  switch(keyCode)
  {
    case UP:
    player.y -= 10;
    break;
    case DOWN:
    player.y += 10;
    break;
    case LEFT:
    player.x -= 10;
    break;
    case RIGHT:
    player.x += 10;
    break;
    default:
    break;
  }
}

void draw()
{
  background(0);
  fill(255,255,0);
  ellipse(player.x,player.y,radius,radius);
  keyPressed();
}
