class Clouds
{
  float x;
  float y;
  int s;
  float sp;
  
  Clouds(float x0, float y0, int s0, float sp0)
  {
    x = x0;
    y = y0;
    s = s0;
    sp = sp0;
  }
  
  void display()
  {
    fill(255, 100);
    ellipse(x, y, 40, 40);
    ellipse(x + 50, y + 30, s, s);
    ellipse(x - 50, y + 30, s, s);
  }
  
  void move()
  {
    x += sp;
    
    if(x > width)
    {
      x = -50;
    }
  }
  
}
