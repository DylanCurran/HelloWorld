void setup()
{
  size(1200,800);
  setupBack();
  setupPlayer();
  setupGoal();
  setupObs();
}

void draw()
{
  background(0,0,255);
  drawBack();
  drawPlayer();
  drawGoal();
  drawObs();
}
