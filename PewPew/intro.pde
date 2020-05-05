void intro()
{
  background(black);
  
  fill(gray);
  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  textFont(mono);
  textSize(250);
  
  image(pew, width / 2, height / 2, 800, 363);
  text("PEW", width / 2, height / 3);
  text("PEW", width / 2, (height - height / 3) - 75);
}

void introClicks()
{
  mode = game;
}
