int numC = 20;
int numS = 20;
int xR;
float xC;

ArrayList<Buttons> buttons = new ArrayList<Buttons>();

void setup()
{
  size(1000, 1000);
  
  for(int i = 0; i < numC; i++)
  {
    buttons.add(new Buttons(0, 0, 0, xC, random(100, 900), 20));
    xC += 50;
  }
}

void draw()
{
  for(Buttons b : buttons)
  {
    b.display();
  }
}
