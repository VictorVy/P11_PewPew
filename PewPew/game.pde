void game()
{
  background(gray);
  
  for(int i = 0; i < gameObjects.size(); i++)
  {
    GameObject obj = gameObjects.get(i);
    obj.act();
    obj.show();
    if(obj.dead())
    {
      gameObjects.remove(i);
    }
  }
  
  if(frameCount % 60 == 0)
  {
    gameObjects.add(new Enemy());
  }
}

void gameClicks()
{
  
}
