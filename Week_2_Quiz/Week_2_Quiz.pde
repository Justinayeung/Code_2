//https://github.com/Justinayeung/Processing/tree/master/ALL%20SKETCHES/Week%204/LightOn

float circleX, circleY;
float squareX, squareY;
float size = 150;

boolean circleClick = false;
boolean squareClick = false;

String displayQuote = "Quote Number 1";

void setup()
{
  size(900, 450);
  rectMode(CENTER);
  circleX = 225;
  circleY = height/2;
  squareX = 675;
  squareY = height/2;
}

void draw()
{ 
  mouseClicked();
  
  if(circleClick)
  {
    //background square fill color changes
    rect(225, height/2, 450, 450);
    fill(100, 100, 30);
  }
  else
  {
    rect(225, height/2, 450, 450);
    fill(25, 100, 30);
  }
  
  if(squareClick)
  {
    //background square fill color changes
    rect(675, height/2, 450, 450);
    fill(0);
  }
  else
  {
    rect(675, height/2, 450, 450);
    fill(250);
  }
  
  ellipse(circleX, circleY, size, size);
  rect(squareX, squareY, size, size);
}

void mouseClicked()
{
  if(mousePressed)
  {
    if(mouseX > 525 && mouseX < 835 && mouseY > height/2 - size/2 && mouseY < height/2 + size/2)
    {
      squareClick = true;
    }
    else
    {
      squareClick = false;
    }
  }
    
  if(mousePressed)
  {
    if(mouseX > 225 - size/2 && mouseX < 225 + size/2 && mouseY > height/2 - size/2 && mouseY < height/2 + size/2)
    {
      //If mouse is pressed and within the limit (circle)
      circleClick = true;
    }
    else
    {
      circleClick = false;
    }
  }
}
