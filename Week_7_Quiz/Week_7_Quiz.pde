PVector circlePosition, circleVelocity, circleAcceleration, circleOffset;
float circW = 150;
float circH = 150;
boolean overC, locked = false;

void setup()
{
  noStroke();
  size(1000, 1000);
  circlePosition = new PVector(500, 500);
  circleVelocity = new PVector(0, 0);
  circleAcceleration = new PVector(0, 0.2);
  circleOffset = new PVector(0, 0);
}

void draw()
{
  background(200, 200, 60);
  fill(150, 0, 30);
  ellipse(circlePosition.x, circlePosition.y, circW, circH);
  circlePosition.add(circleVelocity);
  circleVelocity.add(circleAcceleration);
  checkBoundaries();
  float d = dist(mouseX, mouseY, circlePosition.x, circlePosition.y);
  if(d < circW/2)
  {
    overC = true;
  }
  else
  {
    overC = false;
  }
}

void checkBoundaries()
{
  if(circlePosition.x < circW/2)
  {
    circlePosition.x = circW/2;
    circleVelocity.x = circleVelocity.x * -0.9;
    circleAcceleration.x = circleAcceleration.x * -0.1;
  }
  if(circlePosition.x > width-(circW/2))
  {
    circlePosition.x = width-(circW/2);
    circleVelocity.x = circleVelocity.x * -0.9;
    circleAcceleration.x = circleAcceleration.x * -0.1;
  }
  if(circlePosition.y > height-(circH/2))
  {
    circleVelocity.y = circleVelocity.y * -0.9;
  }
}

void mousePressed()
{
  if(overC)
  {
    locked = true;
  }
  else
  {
    locked = false;
  }
  circleOffset.x = mouseX - circlePosition.x;
  circleOffset.y = mouseY - circlePosition.y;
}

void mouseDragged()
{
  if(locked)
  {
    circlePosition.x = mouseX - circleOffset.x;
    circlePosition.y = mouseY - circleOffset.y;
    circleVelocity.x = 0;
    circleVelocity.y = 0;
    circleAcceleration.y = 0;
  }
}

void mouseReleased()
{
  locked = false;
  circleVelocity.y = 1;
  circleAcceleration.y = 0.2;
  
  if(mouseX > width/2)
  {
    circleVelocity.x = 1;
    circleAcceleration.x = 0.2;
  }
  
  if(mouseX < width/2)
  {
    circleVelocity.x = 1;
    circleAcceleration.x = 0.2;
  }
}
