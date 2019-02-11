class CircleB
{
  float x;
  float y;
  int s;
  boolean Cclicked = false;
  float x1;
  float y1;
  float x2;
  float y2;
  
  CircleB(float x0, float y0, int s0, float x10, float y10, float x20, float y20)
  {
    x = x0;
    y = y0;
    s = s0;
    x1 = x10;
    y1 = y10;
    x2 = x20;
    y2 = y20;
  }
  
  void display()
  {
    ellipse(x, y, s, s);
  }
  
  void colors()
  {
    ellipse(x1, y1, s, s);
  }
  
  void spin()
  {
    ellipse(x2, y2, s, s);
  }
    
}
