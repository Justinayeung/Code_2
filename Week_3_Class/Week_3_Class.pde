float rectX = 100;
float rectWidth = 40;
float rectY = 120;
float rectHeight = 60;
color bgColor = color(220, 100, 200);
boolean buttonIsClicked = false;

void setup()
{
  size(300, 500);
}

void draw()
{
  background(bgColor);

  if(buttonIsClicked)
  {
    bgColor = color(0, 100, 200);
  }
  else
  {
    bgColor = color(220, 100, 200);
  }
  
  rect(rectX, rectY, rectWidth, rectHeight);
}

void mouseClicked()    //Mouse clicked happends only once
{
  if(mouseX > rectX && mouseX < rectX + rectWidth && mouseY > rectY && mouseY < rectY + rectHeight)
  {
  //  if(buttonIsClicked)
  //  {
  //    buttonIsClicked = false;
  //  }
  //  else
  //  {
  //    buttonIsClicked = true;
  //  }
  buttonIsClicked = !buttonIsClicked;
  
  }
  println(buttonIsClicked);
}

void hitDetection()
{
  if(mouseX > rectX && mouseX < rectX + rectWidth && mouseY > rectY && mouseY < rectY + rectHeight)
  {
    bgColor = color(0, 100, 200);
  }
  else 
  {
    bgColor = color(220, 100, 200);
  }
}
