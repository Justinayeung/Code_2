float x, y;
float y1;
float y2;
float speed = 2;
float angle = 0.0;
float scalar = width/2 - 50;

void setup()
{
  size(600, 400);
  x = width/2;
  y = 80;
  
  scalar = width/2 - 50;
  y1 = 160;
  
  y2 = 240;
}

void draw()
{
  background(0);
  
  //https://github.com/Justinayeung/Processing/tree/master/ALL%20SKETCHES/Week%205
  ellipse(x, y, 30, 30);
  x += speed;
  
  if(x >= 550 || x <= 50)
  {
    speed *= -1;
  }
  
  //https://github.com/Justinayeung/Processing/tree/master/ALL%20SKETCHES/Week%2012
  float x1 = width/2 + sin(angle) * scalar; 
  ellipse(x1, y1, 30, 30);
  angle += 0.03;
}
