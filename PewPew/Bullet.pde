class Bullet extends GameObject
{
  Bullet(PVector pos, float size, float hp, color c)
  {
    super(pos.x, pos.y, size, 1, c);
    
    if(c == green)
    {
      PVector aim = new PVector(mouseX - player.pos.x, mouseY - player.pos.y);
      aim.setMag(10);
      speed.x = aim.x;
      speed.y = aim.y;
    }
    else if(c == purple)
    {
      PVector aim = new PVector(player.pos.x - pos.x, player.pos.y - pos.y);
      aim.setMag(10);
      speed.x = aim.x;
      speed.y = aim.y;
    }
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
      
      if(obj instanceof Obstacle && touching(obj))
      {
        speed = new PVector(pos.x - obj.pos.x, pos.y - obj.pos.y);
      }
      
      if(obj instanceof Enemy && touching(obj) && colour == green)
      {
        obj.hp--;
      }
    }
  }
}
