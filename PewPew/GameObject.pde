class GameObject
{
  PVector pos, speed;
  float size, hp;
  color colour;
  
  GameObject(color colour)
  {
    pos = new PVector(random(0, width), random(0, height));
    speed = new PVector(0, 0);
    size = random(25, 75);
    hp = 3;
    this.colour = colour;
  }
  GameObject(float x, float y, float size, float hp, color colour)
  {
    pos = new PVector(x, y);
    this.size = size;
    this.hp = hp;
    this.colour = colour;
    speed = new PVector(0, 0);
  }
  
  void show()
  {
    fill(colour);
    ellipse(pos.x, pos.y, size, size);
  }
  
  void act()
  {
    pos.add(speed);
  }
  
  boolean dead()
  {
    return(hp <= 0);
  }
}
