int numC = 20;
int numR = 10;
float yC = random(200, 900);
float xC = random(200, 900);
float yR = 101;
float xR = 101;
int sizeR = 90;
int sizeC = 40;
int sizeCR = sizeC/2;

ArrayList<Buttons> buttons = new ArrayList<Buttons>();

void setup()
{
  size(1000, 1000);
  noStroke();
  
  for(int i = 0; i < numC; i++)
  {
    for(int j = 0; j < numC; j += 10)
    {
      buttons.add(new Buttons(0, 0, 0, xC+sizeC, yC, sizeC));
    }
  }
  
  for(int i = 0; i < numR;  i++)
  {
    for(int j = 0; j < numR; j++)
    {
      buttons.add(new Buttons(xR * i, yR * j, sizeR, 0, 0, 0));
    }
  }
}

void draw()
{
  background(0);
  for(Buttons b : buttons)
  {
    b.display();
  }
}
