PVector obsPos = new PVector(random(300, 700), 600);
PVector obsSize = new PVector(100,100);
PShape obsRect;
void setupObs()
{
  
  obsRect = createShape(RECT,0,0,obsSize.x,obsSize.y);
  obsRect.setFill(color(255,255,0));
  
}

void drawObs()
{
  shape(obsRect,obsPos.x, obsPos.y);
}
