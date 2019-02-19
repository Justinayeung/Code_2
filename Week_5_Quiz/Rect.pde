class Rect
{
  float x, y, s, s1;
  Rect(float _x, float _y, float _s, float _s1)
  {
    x = _x;
    y = _y;
    s = _s;
    s1 = _s1;
  }
  
  void display()
  {
    fill(0);
    rect(x, y, s, s1);
  }
  
  void active()
  {
    fill(150, 20, 150);
    rect(x, y, s, s1);
    if(millis() > endTime)
    {
      isActive1 = false;
      isActive2 = false;
    }
  }
}
