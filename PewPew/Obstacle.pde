class Obstacle extends GameObject
{
  Obstacle()
  {
    super(orange);
  }
  
  void act()
  {
    super.act();
    
    if(touching(player))
    {
      player.speed = new PVector(player.pos.x - pos.x, player.pos.y - pos.y);
      player.speed.setMag(2);
    }
  }
}
