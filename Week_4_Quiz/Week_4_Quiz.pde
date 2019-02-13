//https://processing.org/tutorials/2darray/

Button[][] buttons;
//ArrayList<Button> buttons = new ArrayList<Button>();  
color[] colors = new color[6];
int c = 0;
float d;
float s;
int widthNum = 10;
int heightNum = 10;

void setup()
{
  size(1000, 1000);
  colors[0] = color(255, 0, 0);
  colors[1] = color(0, 255, 0);
  colors[2] = color(0, 0, 255);
  colors[3] = color(255, 255, 0);
  colors[4] = color(255, 0, 255);
  colors[5] = color(0, 255, 255);
  buttons = new Button[widthNum][heightNum];
  for(int i = 0; i < widthNum; i++)
  {
    for(int j = 0; j < heightNum; j++)
    {
      buttons[i][j] = new Button(i*110, j*110);
      //buttons.add(new Button(i*110, j*110));
    }
  }
}

void draw()
{ 
  background(0);
  for(int i = 0; i < widthNum; i++)
  {
    for(int j = 0; j < heightNum; j++)
    {
      buttons[i][j].display();
      //for(Button b : buttons)
      //{
      //  b.display();
      //}
      d = dist(mouseX, mouseY, i, j);  
      //couldn't do dist(mouseX, mouseY, buttons[i][j], buttons[i][j]
      //This make it so that d is only the distance from the very first circle button (top left)
      if(d < s/2)
      {
        stroke(255, 255, 0);
      }
      else
      {
        stroke(0);
      }
    }
  }
}

void mouseClicked()
{
  for(int i = 0; i < widthNum; i++)
  {
    for(int j = 0; j < heightNum; j++)
    {
      //Because d only works for the first circle, you can only click the top left to change colors)
      buttons[i][j].onClick();
      //for(Button b : buttons)
      //{
      //  b.onClick();
      //}
    }
  }
}
