class Obstacle extends GameObject
{
  Obstacle()
  {
    super(orange);
  }
  
  void act()
  {
    super.act();
    
    if(player.pos.dist(pos) < player.size / 2 + size / 2)
    {
      player.speed = new PVector(player.pos.x - pos.x, player.pos.y - pos.y);
      player.speed.setMag(2);
    }
  }
}
