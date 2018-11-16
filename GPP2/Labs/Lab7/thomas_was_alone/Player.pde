PVector playerPos = new PVector(100, 600);
PVector playerSize = new PVector (50, 100);
PShape  playerRect;
PVector accel = new PVector(0,0);
boolean spacePress;
boolean onObject;
boolean collisionWin;
boolean moveKey = false;
boolean collisionOb = false;
PVector playerVel = new PVector(0,0);

// creates playerShape and sets up some bools
void setupPlayer()
{
  playerRect = createShape(RECT,0,0,playerSize.x,playerSize.y);
  
  collisionWin = false;
  onObject = false;
}

// draws player and calls collision function and draws player based on information
void drawPlayer()
{
  
  collision();
  
  // gooal collision check
  if(!collisionWin)
  {
    playerRect.setFill(color(255,0,0));
  }
  else
  {
    playerRect.setFill(color(255));
  }
  shape(playerRect,playerPos.x, playerPos.y);
  
    // this is for deceleration
    if(!(key == LEFT || key == RIGHT))
    {
      // ensures not hitting object while decelerating
      if(!collisionOb)
      {
      playerVel.x *= 0.95;
      playerPos.x += playerVel.x;
      }
      else
      {
        playerPos.y = obsPos.y - playerSize.y;
        spacePress = false;
        if(onObject)
        {
         playerVel.y = 0;
         playerVel.x = 0;
         collisionOb = false;
        }
      }
    }
    if(playerPos.y > backPos.y - playerSize.y)
      {
        playerPos.y = backPos.y - playerSize.y;
        playerVel.y = 0;
        accel.y =0;
        spacePress = false;
      }
    if(spacePress)
    {
      
      playerPos.y += playerVel.y;
      playerVel.y += accel.y;
      
    }
    if (!spacePress && !onObject && playerPos.y + playerSize.y != backPos.y )
    {
      playerPos.y += playerVel.y;
      playerVel.y += accel.y;
    }
}

void keyPressed()
{
  switch(keyCode)
  {
    case LEFT:
    accel.x = -0.75;
    if(playerVel.x > -6)
    {
      if(!collisionOb)
      {
        playerVel.x += accel.x;
      }
    }
    if(!collisionOb)
    {
    playerPos.x += playerVel.x;
    }
    break;
    case RIGHT:
    accel.x = 0.75;
    if(playerVel.x < 6)
    {
      if(!collisionOb)
      {
        playerVel.x += accel.x;
      }
    }
    if(!collisionOb)
    {
    playerPos.x += playerVel.x;
    }
    break;
    
    
    
  }
  if(!spacePress)
  {
    if(key == ' ')
    {
      playerVel.y = -49.0;
      accel.y = 2.45; 
      spacePress = true;
    }
  }
}

void collision()
{
  // hitting goal
    if(playerPos.x + playerSize.x >= goalPos.x && playerPos.x <= goalPos.x + goalSize.x )
    {
      collisionWin = true;
    }
    else 
    {
      collisionWin = false;
    }
    
    // hitting obstacle
    if(playerPos.x + playerSize.x >= obsPos.x && playerPos.x <= obsPos.x + obsSize.x)
    {
       if(!spacePress)
       {
         if(playerVel.x > 0 && !onObject)
         {
           playerPos.x = obsPos.x - playerSize.x - 1;
           playerVel.x = 0;
         }
         else if (playerVel.x < 0 && !onObject)
         {
           playerPos.x = obsPos.x + obsSize.x + 1;
           playerVel.x = 0;
         }
         
       }
       // checks if y collision or just x collision
         if(playerPos.y + playerSize.y > obsPos.y  && spacePress)
         {
           spacePress = false;
           
           if(playerVel.x == 0 && (playerPos.x == obsPos.x + obsSize.x + 1 || playerPos.x == obsPos.x - playerSize.x - 1))
           {
             onObject = false;
             collisionOb = false;
             
             playerPos.y = backPos.y - playerSize.y;
             
           }
           else
           {
             collisionOb = true;
             onObject = true;
           }
          
         }
         else
         {
           collisionOb = false;
         }
      }
    
    else
    {
       onObject = false; 
    }
    
   
    
}
