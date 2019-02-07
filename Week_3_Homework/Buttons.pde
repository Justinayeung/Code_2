class Buttons
{
  float x;
  float y;
  int s;
  
  float x2;
  float y2;
  int s2;
  
  Buttons(float x0, float y0, int s0, float xx, float yy, int ss)
  {
    x = x0;
    y = y0;
    s = s0;
    x2 = xx;
    y2 = yy;
    s2 = ss;
  }
  
  void display()
  {
    rect(x, y, s, s);
    ellipse(x2, y2, s2, s2);
  }
}
