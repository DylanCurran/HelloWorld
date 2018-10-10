void setup()
{
  size(400,400);
  background(0);
}
int counter = 0;
float mouseX1 = 0;
float mouseY1 = 0;
float mouseX2 = 0;
float mouseY2 = 0;
float magnitude = 0;
void draw()
{
  if(mousePressed == true)
  {
     counter++;
    if (counter == 1)
    {
     
      mouseX1 = pmouseX;
      mouseY1 = pmouseY;
      
    }
    if (counter > 1 )
    {
      mouseX2 = pmouseX;
      mouseY2 = pmouseY;
      
      stroke(155,155,0);
      strokeWeight(2);
    }
    
    line(mouseX1,mouseY1,mouseX2,mouseY2);
    magnitude = sqrt(sq((mouseX1 - mouseX2)) +  sq((mouseY1 - mouseY2)));
    print(magnitude);
    
  }
}
