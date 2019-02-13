class Button
{
  float x;
  float y;
  
  Button(float _x, float _y)
  {
    x = _x;
    y = _y;
       s = random(50, 100);
  }
  
  void display()
  {
    fill(colors[c]);
    ellipse(x, y, s, s);
  }
  
  void onClick()
  { 
    if(d < s/2)
    {
      c = (c + 1) % 6;
    }
  }
}
