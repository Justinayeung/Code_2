//https://processing.org/examples/mousefunctions.html
int numC;
float yC, xC, yC1, xC1, yC2, xC2;
float yR, xR, yR1, xR1, yR2, xR2, xR3, yR3;
int sizeR, sizeR1, sizeC, sizeC1;
boolean Cclicked, Cc, movedR, overBox, locked, locked1, RinSq, overR, Pcirc, overC;
float xOffset, yOffset, xOffset1, yOffset1;
float angle = 0.0f;
float incr = 0.0f;
CircleB c1;
CircleB c2;
CircleB c3;
SquareB r1;

void setup()
{
  size(1000, 1000);
  noStroke();
  numC = 20;
  yC = 550;
  xC = 150;
  yC1 = height/2;
  xC1 = width/2;
  yC2 = height/2;
  xC2 = width/2;
  yR = 500;
  xR = 100;
  sizeR = 100;
  yR1 = 200;
  xR1 = 600;
  yR2 = 900;
  xR2 = width/2;
  xR3 = random(sizeC, width-sizeC);
  yR3 = random(sizeC, height-sizeC);
  sizeR1 = 200;
  sizeC = 50;
  sizeC1 = 100;
  RinSq = false;
  Cclicked = false;
  movedR = false;
  overR = false;
  overBox = false;
  locked = false;
  locked1 = false;
  Pcirc = false;
  Cc = false;
  overC = false;
  xOffset = 0;
  yOffset = 0;
  xOffset1 = 0;
  yOffset1 = 0;
}

void draw()
{
  if(Cclicked)
  {
    background(255, 255, 0);
    fill(170, 240, 165);
    r1 = new SquareB(xR1, yR1, sizeR1);
    r1.display();
  }
  else
  {
    background(0);
  }
  c1 = new CircleB(xC, yC, sizeC);
  c1.display();
  overBox();
  movedR();
  overR();
  if(Cc)
  {
    CC();
  }
  overC();
  float d5 = dist(xC2, yC2, xR2, yR2);
  if(d5 <= sizeC)
  {
    for(int i = 0; i < numC; i++)
    {
      fill(255, 255, 0);
      ellipse(xR3, yR3, sizeC/2, sizeC/2);
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

void CC()
{
  background(100, 100, 100);
  c1 = new CircleB(xC2, yC2, sizeC/2);
  c1.display();
  fill(0, 100);
  r1 = new SquareB(xR2, yR2, sizeC);
  r1.display();
}

void overBox()
{
  if(mouseX > xR && mouseX < xR+sizeR &&  mouseY > yR && mouseY < yR+sizeR)
  {
    overBox = true;
  }
  else
  {
    overBox = false;
  }
  fill(245, 150, 150);
  r1 = new SquareB(xR, yR, sizeR);
  r1.display();
}

void movedR()
{
  float d2 = dist(xR, yR, xC, yC);
  if(d2 > sizeC)
  {
    movedR = true;
  }
  else
  {
    movedR = false;
  }
}

void overC()
{
  float d4 = dist(mouseX, mouseY, xC2, yC2);
  if(d4 < sizeC/2)
  {
    overC = true;
  }
  else
  {
    overC = false;
  }
}

void overR()
{
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
  
  if(overR && RinSq)
  {
    c2 = new CircleB(xC1, yC1, sizeC1);
    c2.display();
  }
}
