class rainDrops
{
  float x;
  float y;
  int s;
  int sp;
  
  rainDrops(float x0, float y0, int s0, int sp0)
  {
    x = x0;
    y = y0;
    s = s0;
    sp = sp0;
  }
  
  void display()
  {
    noStroke();
    fill(0, 0, 255);
    ellipse(x, y, s, s);
  }
  
  void fall()
  {
    y += sp;
    if(y > height + s)
    {
      y = -s;
      x = random(s, width - s);
    }
  }
}
