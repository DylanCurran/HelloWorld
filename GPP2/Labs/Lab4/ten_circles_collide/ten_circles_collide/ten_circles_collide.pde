 PVector ball[] = new PVector[10];
 
 PVector initVel[] = new PVector[10];

 PVector finalVel[] = new PVector[10];
 

 float distance =0;
 float time =0;
 float mass[] = new float[10];
 float xMultiplier;
 float yMultiplier;
 boolean notCollide = false;


void setup()
{
  size (1800,1800);
   for(int i = 0; i < 2 ; i++)
 {
   xMultiplier = i * 150;
   yMultiplier = 200 * i;
   ball[i] = new PVector(200 + xMultiplier, 500 + yMultiplier);
   mass[i] = 1;
   if(i % 2 == 0)
   {
   initVel[i] = new PVector(-3,4);
   }
   else
   {
     initVel[i] = new PVector (3,4);
   }
   finalVel[i] = new PVector(0,0);
 }
}

 
void draw()
{
 
  
  background(0);
  
  distance = sqrt(sq(ball[1].y - ball[0].y) + sq(ball[1].x - ball[0].x));
  if(distance < 250)
  {
    
   finalVel[1].x = (((initVel[1].x * (mass[1]-mass[0]) + (2 * mass[0] * initVel[0].x))) / (mass[1] + mass[0]));
   finalVel[1].y = (((initVel[1].y * (mass[1]-mass[0]) + (2 * mass[0] * initVel[0].y))) / (mass[1] + mass[0]));
   if(!notCollide)
   {
     finalVel[0].x = (((initVel[0].x * (mass[0]-mass[1]) + (2 * mass[1] * initVel[0].x))) / (mass[0] + mass[1]));
     finalVel[0].y = (((initVel[0].y * (mass[0]-mass[1]) + (2 * mass[1] * initVel[0].y))) / (mass[0] + mass[1]));
   notCollide =true;
   }
   else
   {
     finalVel[0].x = -(((initVel[0].x * (mass[0] -mass[1]) + (2 * mass[1] * initVel[0].x))) / (mass[0] + mass[1]));
     finalVel[0].y =  (((initVel[0].y * (mass[0] -mass[1]) + (2 * mass[1] * initVel[0].y))) / (mass[0] + mass[1]));
   }
   
   
  initVel[0] = finalVel[0];
  initVel[1] = finalVel[1];
   
   
  }
  fill(255,255,0);
  ellipse(ball[0].x,ball[0].y,250,250);
  
  fill(255,0,255);
  ellipse(ball[1].x,ball[1].y,250,250);
  
  if (ball[0].x + 125 > width || ball[0].x < 125)
  {
    initVel[0].x *= -1;
  }
  if(ball[0].y +125 > height || ball[0].y < 125)
  {
    initVel[0].y *= -1;
  }
  ball[0].x = ball[0].x + initVel[0].x;
  ball[0].y = ball[0].y + initVel[0].y;
  
  ball[1].x = ball[1].x + initVel[1].x;
  ball[1].y = ball[1].y + initVel[1].y;
  
  if (ball[1].x + 125 > width || ball[1].x < 125)
  {
    initVel[1].x *= -1;
  }
  if(ball[1].y +125 > height || ball[1].y < 125)
  {
    initVel[1].y *= -1;
  }
  
 frameRate(500);
   
  
}
