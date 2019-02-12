class Button
{
  float x;
  float y;
  float s;
  float d;
  boolean red = true;
  boolean green = false;
  boolean blue = false;
  
  Button(float _x, float _y, float _s, float _d)
  {
    x = _x;
    y = _y;
    s = _s;
    d = _d;
  }
  
  void display()
  {
    fill(255, 0, 0);
    ellipse(x, y, s, s);
    
    if(d < s)
    {
      stroke(255, 255, 0);
    }
    else
    {
      stroke(0);
    }
  }  
}
