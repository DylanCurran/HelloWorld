PShape cannon;
PShape powerBar;
float powerPos;
float rotator = 0;
PVector ballPos;
PVector cannonPos;
float radianValue;
float power = 80;
PVector ballVel;
boolean spacePress = false;
void setup()
{
  size(1000,600);
  cannon = createShape(RECT,20,40,150,75);
  cannon.setFill(color(255,0,0));
  
  powerPos = 0.0f;
  ballPos = new PVector(20,575);
  cannonPos = new PVector(120,500);
  ballVel = new PVector(0,0);
  
}

void draw()
{
  background(0);
  powerBar = createShape(RECT,0,0,width / 100 * power, 50);
  powerBar.setFill(color(0,255,0));
 shape(cannon, cannonPos.x,cannonPos.y);
 shape(powerBar, 0,0);
 
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
     case LEFT:
     power--;
     break;
     case RIGHT:
     power++;
     break;
   }
   if(key == ' ')
   {
     spacePress = true;
     ballVel.x += power * 0.5 * cos(radianValue);
     ballVel.y += power * 0.5 * sin(radianValue) + 0.98;
   }
}
