 color black = 0;
color white = 255;
color gray = 225;
color purple = #CA5FD6;
color pink = #F9C1FF;
color orange = #E8BB3F;
color yellow = #F7F78E;
color green = #77E384;

final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameOver = 3;
int mode = intro;

boolean upPressed, leftPressed, downPressed, rightPressed, spacePressed;

PFont mono;
PImage pew;

ArrayList<GameObject> gameObjects;
Player player;

void setup()
{
  size(1000, 800);
  noStroke();
  
  upPressed = leftPressed = downPressed = rightPressed = spacePressed = false;
  
  mono = createFont("mono.ttf", 32);
  pew = loadImage("pew.png");
  
  gameObjects = new ArrayList<GameObject>();
  player = new Player();
  
  for(int i = 0; i < 100; i++)
  {
    gameObjects.add(new Obstacle());
  }
  
  gameObjects.add(player);
}

void draw()
{
  if(mode == intro)
  {
    intro();
  }
  else if(mode == game)
  {
    game();
  }
  else if(mode == pause)
  {
    pause();
  }
  else if(mode == gameOver)
  {
    gameOver();
  }
  else
  {
    println("mode Error");
  }
}
