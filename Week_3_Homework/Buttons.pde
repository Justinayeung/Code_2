class Buttons
{
  float x;
  float y;
  int s;
  
  float x2;
  float y2;
  int s2;
  
  color randC = color(random(0, 255), random(0, 255), random(0, 255));
  
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
    fill(randC);
    rect(x, y, s, s);
    
    fill(100, 200);
    ellipse(x2, y2, s2, s2);
  }
  
  void mouseCLicked()
  {
  }
}
