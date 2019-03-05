PVector circlePosition, circleVelocity, circleAcceleration;
float circW = 100;
float circH = 100;
boolean overC;

void setup()
{
  size(1000, 1000);
  circlePosition = new PVector(500, 500);
  circleVelocity = new PVector(0, 0);
  circleAcceleration = new PVector(0, 0.2);
}

void draw()
{
  background(100);
  ellipse(circlePosition.x, circlePosition.y, circW, circH);
  circlePosition.add(circleVelocity);
  circleVelocity.add(circleAcceleration);
  checkBoundaries();
}

void checkBoundaries()
{
  if(circlePosition.x < circW/2)
  {
    circleVelocity.x = circleVelocity.x * -1;
    circlePosition.x = circW/2;
  }
  if(circlePosition.x > width-(circW/2))
  {
    circleVelocity.x = circleVelocity.x * -1;
    circlePosition.x = width-(circW/2);
  }
  if(circlePosition.y > height-(circH/2))
  {
    circleVelocity.y = circleVelocity.y *= -0.9;
  }
}

void mousePressed()
{
  float d = dist(mouseX, mouseY, circlePosition.x, circlePosition.y);
  if(d < circW/2)
  {
    overC = true;
  }
}

void mouseDragged()
{
  if(overC)
  {
    circlePosition.x = mouseX;
    circlePosition.y = mouseY;
  }
}
