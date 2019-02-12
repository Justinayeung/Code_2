Button b1;
float x;
float y;
float s;
float d;
boolean red = true;
boolean green = false;
boolean blue = false;
color r = color(255, 0, 0);
color g = color(0, 255, 0);
color b = color(0, 0, 255);

void setup()
{
  background(0);
  size(1000, 1000);
  x = width/2;
  y = height/2;
  s = 100;
  d = dist(mouseX, mouseY, x, y);
}

void draw()
{
  colors();
}

void mouseClicked()
{
  if(red && d < s)
  {
    green = true;
  }
  else
  {
    blue = false;
  }
  
  if(green && d < s)
  {
    blue = true;
  }
  else
  {
    green = false;
    red = false;
  }
  
  if(blue && d < s)
  {
    red = true;
  }
  else
  {
    green = false;
    blue = false;
  }
}

void colors()
{
  if(red)
  {
    fill(255, 0, 0);
    b1 = new Button(x, y, s, dist(mouseX, mouseY, x, y));
    b1.display();
  }
  else if(green)
  {
    fill(0, 255, 0);
    b1 = new Button(x, y, s, dist(mouseX, mouseY, x, y));
    b1.display();
  }
  else if(blue)
  {
    fill(0, 0, 255);
    b1 = new Button(x, y, s, dist(mouseX, mouseY, x, y));
    b1.display();
  }
}
