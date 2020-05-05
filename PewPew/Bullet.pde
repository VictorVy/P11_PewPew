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
  }
}
