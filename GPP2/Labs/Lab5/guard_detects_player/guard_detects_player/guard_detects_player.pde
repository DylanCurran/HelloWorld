void setup()
{
  size(800,800);
  //background(0);
  guardImg = loadImage("guard_sprite.jpg");
}
// guard stuff
PImage guardImg = createImage(200,175,0);
int value = -3;
int scaler = 1;
PVector  guard= new PVector(400,400);
// player stuff
int radius = 30;
int arcRadius = 280;
PVector player = new PVector(400,400);
PVector leftArc = new PVector(guard.x + guardImg.width - 30,guard.y - guardImg.height / 2);
PVector rightArc = new PVector(guard.x + guardImg.width - 30,guard.y - guardImg.height / 2);
float distance;
float anglePlayer;
float angleLeftArc;
float angleRightArc;


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
  guard.x += value;
  
 
   
 
   
    
   if(guard.x < guardImg.width  && value < 0) 
  {
    
    guard.x = 1;
    value *= -1;
  }
  else if(guard.x >= width - guardImg.width && value > 0)
  {
    guard.x = width;
    value *= -1;
  }
  
  
  if(value > 0)
  {
    distance = sqrt(sq(rightArc.x - player.x) + sq(rightArc.y - player.y));
    anglePlayer = atan2(player.y - rightArc.y, player.x - rightArc.x);
    pushMatrix();
    scale(-scaler,1.0);
    tint(255,127);
    image(guardImg,-guard.x,100);
    popMatrix();
    fill(0,0,255,127);
    rightArc = new PVector(guard.x - 30,guard.y - guardImg.height / 2);
    
    
    angleRightArc = atan2(( arcRadius * cos(  THIRD_PI)),arcRadius * sin( THIRD_PI  ));
    //print("\n" + angleRightArc);// 0.52
    
    arc(rightArc.x,rightArc.y,arcRadius,arcRadius, - THIRD_PI,   + THIRD_PI, PIE);
    
    if( anglePlayer <= angleRightArc * 2 && anglePlayer >= -angleRightArc * 2 &&
       !(distance >= arcRadius/ 2 + radius /2 ))
      {
        fill(255,0,0);
      }
      else
      {
        fill(255,255,0);
      }
       
  }
  else
  {
     
     tint(255,127);
     image(guardImg,guard.x,100);
     fill(0,0,255,127);
     distance = sqrt(sq(leftArc.x - player.x) + sq(leftArc.y - player.y));
     leftArc = new PVector(guard.x + 30,guard.y - guardImg.height/2);
     anglePlayer = atan2(player.y - leftArc.y, player.x - leftArc.x);
     arc(leftArc.x, leftArc.y,arcRadius,arcRadius,PI - THIRD_PI, PI + THIRD_PI, PIE);
     angleLeftArc = atan2(( arcRadius * cos(  THIRD_PI  )),arcRadius * sin( THIRD_PI   ));
     
     print("\n LeftArc: " + angleLeftArc); // 0.52
     print("\n playerArc" + anglePlayer); // 1.74
    
     
     
     if( !(anglePlayer <= angleLeftArc * 4 && anglePlayer >= -angleLeftArc * 4)
       &&!(distance >= arcRadius/ 2 + radius /2) ) 
      {
        fill(255,0,0);
      }
      else
      {
        fill(255,255,0);
      }
     
  }
  
  

  ellipse(player.x,player.y,radius,radius);
  // this is top point right side
  //ellipse(rightArc.x + arcRadius/2 * cos( - THIRD_PI),rightArc.y + arcRadius/2 * sin( - THIRD_PI),radius,radius);
  // this is the bottom point right side
  //ellipse(rightArc.x + arcRadius/2 * cos(THIRD_PI),rightArc.y + arcRadius/2 * sin(THIRD_PI),radius,radius);
}
