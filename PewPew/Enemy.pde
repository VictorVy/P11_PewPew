class Enemy extends GameObject
{
  Enemy()
  {
    super(random(0, width), random(0, height), 20, 1, purple);
    
    while(touchingObstacle())
    {
      pos = new PVector(random(0, width), random(0, height));
    }
  }
  
  void act()
  {
    super.act();
  }
}
