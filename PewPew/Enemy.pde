class Enemy extends GameObject
{
  int alpha;
  
  Enemy()
  {
    super(random(0, width), random(0, height), 20, 1, purple);
    
    while(touchingObstacle())
    {
      pos = new PVector(random(0, width), random(0, height));
    }
    
    alpha = 0;
  }
  
  void show()
  {
    fill(colour, alpha);
    ellipse(pos.x, pos.y, size, size);
  }
  
  void act()
  {
    super.act();
    
    if(alpha <= 255)
    {
      alpha += 2;
    }
    else
    {
      gameObjects.add(new Bullet(pos, 5, 1, purple));
    }
  }
}
