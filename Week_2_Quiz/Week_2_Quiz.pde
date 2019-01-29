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
}

void mouseClicked()
{
  if(mousePressed)
  {
    if(mouseX > 525 && mouseX < 835 && mouseY > height/2 - size/2 && mouseY < height/2 + size/2)
    {
      squareClick = true;
      rect(675, height/2, 450, 450);
      fill(30, 20, 30);
    }
    else
    {
      squareClick = false;
      rect(675, height/2, 450, 450);
      fill(40, 250, 20);
    }
  }
    
  if(mousePressed)
  {
    if(mouseX > 225 - size/2 && mouseX < 225 + size/2 && mouseY > height/2 - size/2 && mouseY < height/2 + size/2)
    {
      circleClick = true;
      rect(225, height/2, 450, 450);
      fill(100, 100, 30);
    }
    else
    {
      circleClick = false;
      fill(100, 20, 20);
    }
  }
  
  ellipse(circleX, circleY, size, size);
  rect(squareX, squareY, size, size);
}
