class Bullet extends GameObject
{
  Bullet()
  {
    super(player.x, player.y, 5, 1, green);
    PVector aim = new PVector(mouseX - player.x, mouseY - player.y);
    aim.setMag(10);
    speedX = aim.x;
    speedY = aim.y;
  }
  
  void act()
  {
    super.act();
    if(x < 0 - size / 2 || x > width + size / 2 || y < 0 - size / 2 || y > height + size / 2)
    {
      hp = 0;
    }
    
    for(int i = 0; i < gameObjects.size(); i++)
    {
      GameObject obj = gameObjects.get(i);
      
      if(obj instanceof Obstacle)
      {
        if(dist(obj.x, obj.y, x, y) < obj.size / 2 + size / 2)
        {
          PVector bounce = new PVector(x - obj.x, y - obj.y);
          bounce.setMag(10);
          speedX = bounce.x;
          speedY = bounce.y;
        }
      }
    }
  }
}
