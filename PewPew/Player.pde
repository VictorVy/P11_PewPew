class Player extends GameObject
{
  Player()
  {
    super(width / 2, height / 2, 20, 3, green);
  }
  
  void act()
  {
    super.act();
    
    //movement
    if(upPressed)
    {
      speedY = -3;
    }
    if(leftPressed)
    {
      speedX = -3;
    }
    if(downPressed)
    {
      speedY = 3;
    }
    if(rightPressed)
    {
      speedX = 3;
    }
    
    if(!upPressed && !downPressed)
    {
      speedY = 0;
    }
    if(!leftPressed && !rightPressed)
    {
      speedX = 0;
    }
    
    //bounds
    if(x < size / 2)
    {
      x = size / 2;
    }
    else if(x > width - size / 2)
    {
      x = width - size / 2;
    }
    if(y < size / 2)
    {
      y = size / 2;
    }
    else if(y > height - size / 2)
    {
      y = height - size / 2;
    }
    
    shoot();
  }
  
  void shoot()
  {
    if(mousePressed && mouseButton == LEFT)
    {
      gameObjects.add(new Bullet());
    }
  }
}
