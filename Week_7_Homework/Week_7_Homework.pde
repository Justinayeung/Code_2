Bunny b;

void setup()
{
  size(1000, 1000);
  b = new Bunny();
  imageMode(CENTER);
}

void draw()
{
  drawBackground();
  b.displayCharacter();
  b.update();
}

void drawBackground()
{
  background(255);
  noStroke();
  fill(#A4DE84);
  rect(0, 0, width, height);
  fill(#84BFDE);
  rect(0, 700, width, height);
}
