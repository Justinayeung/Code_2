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
    rect(x, y, s, s1);
  }
}
