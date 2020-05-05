void mouseReleased()
{
  if(mode == intro)
  {
    introClicks();
  }
  else if(mode == game)
  {
    gameClicks();
  }
  else if(mode == pause)
  {
    pauseClicks();
  }
  else if(mode == gameOver)
  {
    gameOverClicks();
  }
  else
  {
    println("Click mode Error");
  }
}

void keyPressed()
{
  if(key == CODED)
  {
    switch(keyCode)
    {
      case UP:
        upPressed = true;
        break;
      case LEFT:
        leftPressed = true;
        break;
      case DOWN:
        downPressed = true;
        break;
      case RIGHT:
        rightPressed = true;
        break;
    }
  }
  else
  {
    switch(key)
    {
      case 'w':
      case 'W':
        upPressed = true;
        break;
      case 'a':
      case 'A':
        leftPressed = true;
        break;
      case 's':
      case 'S':
        downPressed = true;
        break;
      case 'd':
      case 'D':
        rightPressed = true;
        break;
    }
  }
}

void keyReleased()
{
  if(key == CODED)
  {
    switch(keyCode)
    {
      case UP:
        upPressed = false;
        break;
      case LEFT:
        leftPressed = false;
        break;
      case DOWN:
        downPressed = false;
        break;
      case RIGHT:
        rightPressed = false;
        break;
    }
  }
  else
  {
    switch(key)
    {
      case 'w':
      case 'W':
        upPressed = false;
        break;
      case 'a':
      case 'A':
        leftPressed = false;
        break;
      case 's':
      case 'S':
        downPressed = false;
        break;
      case 'd':
      case 'D':
        rightPressed = false;
        break;
      }
  }
}
