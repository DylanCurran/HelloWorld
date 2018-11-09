PShape cannon;
float rotator = 0;
PVector ballPos;
PVector cannonPos;
float radianValue;
PVector ballVel;
boolean spacePress = false;
void setup()
{
  size(1000,600);
  cannon = createShape(RECT,20,40,150,75);
  cannon.setFill(color(255,0,0));
   ballPos = new PVector(20,575);
   cannonPos = new PVector(120,500);
   ballVel = new PVector(0,0);
  
}

void draw()
{
  background(0);
  
 shape(cannon, cannonPos.x,cannonPos.y);
 
 fill (255);
 arc(0.0,600.0,300.0,300.0,PI + HALF_PI,2 *PI);
 fill (255,0,255);
 ellipse(ballPos.x ,ballPos.y, 40 ,40);
 if (ballPos.y < 600)
 {
   ballPos.x += ballVel.x;
   ballPos.y += ballVel.y;
   if(spacePress)
   {
     ballVel.y += 3;
   }
   if(ballPos.y > 580 )
   {
     ballVel.x = 0;
     ballVel.y = 0;
     ballPos.y = 580;
     spacePress = false; 
   }
   
 }
 
  
 
}

void keyPressed()
{
   switch(keyCode)
   {
     case UP:
     rotator = -(acos(-1.0)/ 180);
     radianValue += rotator;
     cannonPos.x -= 2 * cos(rotator);
     cannonPos.y -= 2 * sin(rotator);
     cannon.rotate(rotator);
     break;
     case DOWN:
     rotator = acos(-1.0)/ 180;
     radianValue += rotator;
     cannonPos.x += 2 * cos(rotator);
     cannonPos.y += 2 * sin(rotator);
     cannon.rotate(rotator);
     break;
   }
   if(key == ' ')
   {
     spacePress = true;
     ballVel.x += 50.0 * cos(radianValue);
     ballVel.y += 50.0 * sin(radianValue) + 0.98;
   }
}
