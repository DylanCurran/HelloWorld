PVector goalPos = new PVector( random(800,1100), 600);
PVector goalSize = new PVector(50,100);
PShape goalRect;
void setupGoal()
{
  
  goalRect = createShape(RECT,0,0,goalSize.x,goalSize.y);
  goalRect.setStroke(color(255,255,0));
  goalRect.setStrokeWeight(1);
  goalRect.setFill(false);
  
}

void drawGoal()
{
  shape(goalRect,goalPos.x, goalPos.y);
}
