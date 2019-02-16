class Buttons
{
  float x;
  float y;
  int s;
  float x1;
  float y1;
  float x2;
  float y2;
  float xR;
  float yR;
  float sR;
  
  Buttons(float x0, float y0, int s0, float x10, float y10, float x20, float y20, float xR0, float yR0, float sR0)
  {
    x = x0;
    y = y0;
    s = s0;
    x1 = x10;
    y1 = y10;
    x2 = x20;
    y2 = y20;
    xR = xR0;
    yR = yR0;
    sR = sR0;
  }
  
  void display()
  { 
    ellipse(x, y, s, s);
    rectMode(CORNER);
    rect(xR, yR, sR, sR);
    
    float d2 = dist(xR, yR, x, y);
    if(d2 > sR)
    {
      movedR = true;
    }
    else
    {
      movedR = false;
    }
    
    float d4 = dist(mouseX, mouseY, xC2, yC2);
    if(d4 < sizeC/2)
    {
      overC = true;
    }
    else
    {
      overC = false;
    }
    
    float d = dist(mouseX, mouseY, xR, yR);
    if(d < sR)
    {
      overBox = true;
      movedR = false;
    }
    else
    {
      overBox = false;
    }
    
    float d3 = dist(xR, yR, xC, yC);
    if(d3 > sizeC)
    {
      movedR1 = true;
    }
    else
    {
      movedR1 = false;
    }
    
    if(xR+sizeR > xR1 && xR < xR1+sizeR1 && yR+sizeR > yR1 && yR < yR1+sizeR1)
    {
      overR = true;
      RinSq = true;
    }
    else
    {
      overR = false;
      RinSq = false;
    }
    
    if(Cclicked)
    {
      background(255, 255, 0);
      fill(170, 240, 165);
      rect(xR1, yR1, sizeR1, sizeR1);
      fill(230, 150, 150);
      rect(xR, yR, sR, sR);
    }
  }
  
  void overR()
  { 
    if(overR && RinSq)
    {
      ellipse(x, y, s, s);
    }
  }
  
  void colors()
  {
    if(xC2 > xR2 && xC2 < xR2+sizeC && yC2 > yR2 && yC2 < yR2+sizeC)
    {
      x1 = random(s, width - s);
      y1 = random(s, height - s);
      fill(random(0, 255), random(0, 255), random(0, 255));
      ellipse(x1, y1, s, s);
    }
  }
  
  void spin()
  {
    if(xC2 > xR3 && xC2 < xR3+sizeC && yC2 > yR3 && yC2 < yR3+sizeC)
    {
      for(int i = 0; i < width; i++)
      {
        y2 = height/2 + sin(angle) * (height/2 - sizeC/2);
        x2 = i++;
        fill(200, 200);
        ellipse(x2, y2, s, s);
        angle += incr;
      }
    }
  }
}
void mouseClicked()
{
  float d1 = dist(mouseX, mouseY, xC, yC);
  if(d1 < sizeC/2 && movedR)
  {
    Cclicked = true;
  } 
  else
  {
    Cclicked = false;
  }
  float d3 = dist(mouseX, mouseY, xC1, yC1);
  if(d3 < sizeC1/2)
  {
    Cc = true;
  }
  else
  {
    Cc = false;
  }
}

void mousePressed()
{
  if(overBox)
  {
    locked = true;
    xOffset = mouseX-xR;
    yOffset = mouseY-yR;
  }
  else
  {
    locked = false;
  }
  if(overC)
  {
    locked1 = true;
    xOffset1 = mouseX-xC2;
    yOffset1 = mouseY-yC2;
  }
  else
  {
    locked1 = false;
  }
}

void mouseDragged()
{
  if(locked)
  {
    xR = mouseX-xOffset;
    yR = mouseY-yOffset;
  }
  if(locked1)
  {
    xC2 = mouseX-xOffset1;
    yC2 = mouseY-yOffset1;
  }
}

void mouseReleased()
{
  locked = false;
  locked1 = false;
}
