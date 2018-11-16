// this is background stuff rather than draw stuff
PVector backPos = new PVector(0,700);
PVector backSize = new PVector(1200,100);
PShape rect;
void setupBack()
{
  rect = createShape(RECT,0,0,backSize.x,backSize.y);
  rect.setFill(color(0,255,0));
 
}
void drawBack()
{
  shape(rect,backPos.x, backPos.y);
}
