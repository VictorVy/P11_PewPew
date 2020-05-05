class GameObject
{
  float x, y, speedX, speedY, size, hp;
  color colour;
  
  GameObject(color colour)
  {
    x = random(0, width);
    y = random(0, height);
    speedX = speedY = 0;
    size = random(25, 75);
    hp = 3;
    this.colour = colour;
  }
  GameObject(float x, float y, float size, float hp, color colour)
  {
    this.x = x;
    this.y = y;
    this.size = size;
    this.hp = hp;
    this.colour = colour;
    speedX = speedY = 0;
  }
  
  void show()
  {
    fill(colour);
    ellipse(x, y, size, size);
  }
  
  void act()
  {
    x += speedX;
    y += speedY;
  }
  
  boolean dead()
  {
    if(hp <= 0)
    {
      return true;
    }
    else
    {
      return false;
    }
  }
}
