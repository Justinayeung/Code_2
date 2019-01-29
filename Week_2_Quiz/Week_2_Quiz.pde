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
  noStroke();
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
    
    //The background side of square would stay as if it was false
    rect(675, height/2, 450, 450);
    fill(250);
  }
  
  if(squareClick)
  {
    //background square fill color changes
    rect(675, height/2, 450, 450);
    fill(0);
    
    //The background side of the circle would stay as if it was false
    rect(225, height/2, 450, 450);
    fill(200, 170, 30);
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
      //if mouse is pressed within the limits (square)
      squareClick = true;
    }
    else
    {
      //if it is not true it will = false
      squareClick = false;
      rect(675, height/2, 450, 450);
      fill(250);
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
      //if it is not true it will = false
      circleClick = false;
      rect(225, height/2, 450, 450);
      fill(200, 170, 30);
    }
  }
}
