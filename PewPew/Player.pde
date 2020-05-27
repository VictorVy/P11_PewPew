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
      speed.y = -3;
    }
    if(leftPressed)
    {
      speed.x = -3;
    }
    if(downPressed)
    {
      speed.y = 3;
    }
    if(rightPressed)
    {
      speed.x = 3;
    }
    
    if(!upPressed && !downPressed)
    {
      speed.y = 0;
    }
    if(!leftPressed && !rightPressed)
    {
      speed.x = 0;
    }
    
    //bounds
    if(pos.x < size / 2)
    {
      pos.x = size / 2;
    }
    else if(pos.x > width - size / 2)
    {
      pos.x = width - size / 2;
    }
    if(pos.y < size / 2)
    {
      pos.y = size / 2;
    }
    else if(pos.y > height - size / 2)
    {
      pos.y = height - size / 2;
    }
    
    shoot();
  }
  
  void shoot()
  {
    if(mousePressed && mouseButton == LEFT)
    {
      gameObjects.add(new Bullet(pos, 5, 1, green));
    }
  }
}
