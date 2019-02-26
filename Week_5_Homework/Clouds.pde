class Clouds
{
  Clouds()
  {
    xC1 = random(0, 2000);
    yC1 = random(50, 200);
    xC2 = random(0, 2000);
    yC2 = random(50, 200);
    xC3 = random(0, 2000);
    yC3 = random(50, 200);
    xC4 = random(0, 2000);
    yC4 = random(50, 200);
    xC5 = random(0, 2000);
    yC5 = random(50, 200);
  }
  
  void display1()
  {
    fill(255, 100);
    ellipse(xC1, yC1, 100, 100);
    ellipse(xC1+70, yC1+10, 50, 50);
    ellipse(xC1-60, yC1+5, 40, 40);
    xC1 ++;
  }
  void display2()
  {
    fill(255, 100);
    ellipse(xC2, yC2, 100, 100);
    ellipse(xC2+70, yC2+10, 50, 50);
    ellipse(xC2-60, yC2+5, 40, 40);
    xC2 ++;
  }
  void display3()
  {
    fill(255, 100);
    ellipse(xC3, yC3, 100, 100);
    ellipse(xC3+70, yC3+10, 50, 50);
    ellipse(xC3-60, yC3+5, 40, 40);
    xC3 ++;
  }
  void display4()
  {
    fill(255, 100);
    ellipse(xC4, yC4, 100, 100);
    ellipse(xC4+70, yC4+10, 50, 50);
    ellipse(xC4-60, yC4+5, 40, 40);
    xC4 ++;
  }
  void display5()
  {
    fill(255, 100);
    ellipse(xC5, yC5, 100, 100);
    ellipse(xC5+70, yC5+10, 50, 50);
    ellipse(xC5-60, yC5+5, 40, 40);
    xC5 ++;
  }
  
  void boundaries()
  {
    if(xC1 > width+150)
    {
      xC1 = -150;
    }
    if(xC2 > width+150)
    {
      xC2 = -150;
    }
    if(xC3 > width+150)
    {
      xC3 = -150;
    }
    if(xC4 > width+150)
    {
      xC4 = -150;
    }
    if(xC5 > width+150)
    {
      xC5 = -150;
    }
  }
}
