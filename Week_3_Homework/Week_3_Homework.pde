//https://processing.org/examples/mousefunctions.html
float yC = 550;
float xC = 150;
float yC1, xC1, yC2, xC2;
float yR = 500;
float xR = 100;
float yR1 = 200;
float xR1 = 600;
float yR2 = 900;
float xR2, yR3;
float xR3 = 300;
int sizeR1 = 200;
int sizeC = 50;
int sizeR = 100;
int sizeC1 = 100;
boolean Cclicked, Cc, movedR, movedR1, overBox, locked, locked1, RinSq, overR, Pcirc, overC = false;
float xOffset, yOffset, xOffset1, yOffset1 = 0;
float angle = 0.0f;
float incr = 0.05;
Buttons c1, c2, c3, r1;
ArrayList<Buttons> circles = new ArrayList<Buttons>();

void setup()
{
  size(1000, 1000);
  noStroke();
  yC1 = height/2;
  xC1 = width/2;
  yC2 = height/2;
  xC2 = width/2;
  xR2 = width/2;
  yR3 = height/2;
}

void draw()
{
  background(0);
  c1 = new Buttons(xC, yC, sizeC, 0, 0, 0, 0, 0, 0, 0);
  c1.display();
  overBox();
  overR();
  if(Cc)
  {
    CC();
  }
  colors();
  spin();
}

void overBox()
{
  fill(230, 150, 150);
  r1 = new Buttons(0, 0, 0, 0, 0, 0, 0, xR, yR, sizeR);
  r1.display();
}

void overR()
{
  c2 = new Buttons(xC1, yC1, sizeC1, 0, 0, 0, 0, 0, 0, 0);
  c2.overR();
}

void colors()
{
  circles.add(new Buttons(0, 0, sizeC/2, xC, yC, 0, 0, 0, 0, 0));
  for(Buttons b : circles)
  {
    b.colors();
  }
}

void spin()
{
  c3 = new Buttons(0, 0, sizeC/2, 0, 0, xC, yC, 0, 0, 0);
  c3.spin();
}

void CC()
{
  background(100, 100, 100);
  c1 = new Buttons(xC2, yC2, sizeC/2, 0, 0, 0, 0, 0, 0, 0);
  c1.display();
  fill(0, 100);
  r1 = new Buttons(0, 0, 0, 0, 0, 0, 0, xR2, yR2, sizeC);
  r1.display();
  r1 = new Buttons(0, 0, 0, 0, 0, 0, 0, xR3, yR3, sizeC);
  r1.display();
}
