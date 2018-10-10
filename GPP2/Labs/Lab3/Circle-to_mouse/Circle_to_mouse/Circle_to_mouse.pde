void setup()
{
  size (1400,1400);
 
}
int counterX =5;
int counterY =5;

void draw()
{
  background(0);
   fill(255,0,0);
   ellipse(200 + counterX,200 + counterY,20,20);
   if (200 + counterX < pmouseX  )
   {
    
   //counterX = counterX+ int(random(1,15));
   //counterX = counterX+ 3;
   }
   else if (pmouseX == 200 + counterX)
   {
   }
   else
   {
     //counterX = counterX - int(random(1,15));
     //counterX = counterX - 3;
   }
   if (200 + counterY < pmouseY)
   {
     //counterY = counterY + int(random(1,15));
     //counterY = counterY + 3;
   }
   else if (pmouseY == 200 + counterY)
   {
   }
   else
   {
     //counterY = counterY - int(random(1,15));
     //counterY = counterY - 3;
   }
   strokeWeight(2);
   
}
