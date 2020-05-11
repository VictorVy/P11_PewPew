class Bullet extends GameObject
{
  Bullet()
  {
    super(player.pos.x, player.pos.y, 5, 1, green);
    PVector aim = new PVector(mouseX - player.pos.x, mouseY - player.pos.y);
    aim.setMag(10);
    speed.x = aim.x;
    speed.y = aim.y;
  }
  
  void act()
  {
    super.act();
    if(pos.x < 0 - size / 2 || pos.x > width + size / 2 || pos.y < 0 - size / 2 || pos.y > height + size / 2)
    {
      hp = 0;
    }
    
    for(int i = 0; i < gameObjects.size(); i++)
    {
      GameObject obj = gameObjects.get(i);
      
      if(obj instanceof Obstacle)
      {
        if(obj.pos.dist(pos) < obj.size / 2 + size / 2)
        {
          speed = new PVector(pos.x - obj.pos.x, pos.y - obj.pos.y);
        }
      }
    }
  }
}
