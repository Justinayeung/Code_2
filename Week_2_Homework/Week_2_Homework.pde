PVector pos, velocity;
float speed = 3;
float angle = 0;

int rectX, rectY;
int rectSize = 80;
color rectColor;
color rectHighlight;
boolean overW = false;
boolean overA = false;
boolean overS = false;
boolean overD = false;

void setup()
{
  size(1000, 1000);
  rectMode(CENTER);
  noStroke();

  pos = new PVector(width/2, height/2);
  velocity = new PVector();
  
  rectColor = color (100, 200, 210);
  rectHighlight = color(150, 200, 250);
  rectX = 3 * (width/4) + 50;
  rectY = 3 * (height/4) + 80;
}

void draw()
{
  background(170, 200, 210);
  Road();
  
  //pushMatrix();
  //translate(pos.x, pos.y);
  //https://processing.org/reference/PVector_heading_.html
  //rotate(velocity.heading());
  //Car();
  //popMatrix();
  
  //https://github.com/bennorskov/Parsons-Code-2-2019/blob/master/Week%202/Quiz/buttonQuiz/buttonQuiz.pde
  Buttons();    
  Input();

  //https://processing.org/reference/PVector_heading_.html
  translate(pos.x+25, pos.y-10);
  rotate(velocity.heading());
  Car();
}

void Input()
{
  //if(key == 'w')    //https://processing.org/reference/key.html
  //{
  //  velocity.y = -2;
  //}
  //else if(key == 'a')
  //{
  //  velocity.x = -2;
  //}
  //else if(key == 's')
  //{
  //  velocity.y = 2;
  //}
  //else if(key == 'd')
  //{
  //  velocity.x = 2;
  //}
  //pos.add(velocity);
  
  //if(keyCode == SHIFT)
  //{
  //  velocity.x = 0;
  //  velocity.y = 0;
  //}
  //pos.add(velocity);
  
  if(mouseX > rectX && 
     mouseX < (rectX)+rectSize && 
     mouseY > (rectY)-120 && 
     mouseY < (rectY+rectSize)-120)
    {
      overW = true;
    }
    else
    {
      overW = false;
    }
  
  
  if(mouseX > (rectX)-110 && 
     mouseX < (rectX + rectSize)-110 && 
     mouseY > rectY-15 && 
     mouseY < (rectY+rectSize)-15)
    {
      overA = true;
    }
    else
    {
      overA = false;
    }
  
  
  if(mouseX > rectX && 
     mouseX < rectX+rectSize && 
     mouseY > rectY+60 && 
     mouseY < (rectY+rectSize)+60)
    {
      overS = true;
    }
    else
    {
      overS = false;
    }
  
  if(mouseX > (rectX)+110 && 
     mouseX < (rectX+rectSize)+110 && 
     mouseY > rectY-15 && 
     mouseY < (rectY+rectSize)-15)
    {
      overD = true;
    }
    else
    {
      overD = false;
    }
    
  if(overW)
  {
    velocity.y = -speed;
  }
  else if(overS)
  {
    velocity.y = speed;
  }
  else if(overA)
  {    
    velocity.x = -speed;
  }
  else if(overD)
  {
    velocity.x = speed;
  }
  else
  {
    velocity.x = 0;
    velocity.y = 0;
  }
  
  velocity.normalize();
  velocity.mult(speed);
  pos.add(velocity);
}

void Buttons()
{
  //-------- W --------
  if(overW)    //If mouse is over button
  {
    fill(rectHighlight);  //Highlight color for the button
  }
  else
  {
    fill(rectColor);    //Else color is the original color
  }
  rect(rectX+50, rectY-60, rectSize, rectSize);
  fill(230);
  triangle(rectX+25, rectY-40, rectX+50, rectY-85, rectX+75, rectY-40);    //W
  
    
  //-------- A --------
  if(overA)    //If mouse is over button
  {
    fill(rectHighlight);  //Highlight color for the button
  }
  else
  {
    fill(rectColor);    //Else color is the original color
  }
  rect(rectX-50, rectY+25, rectSize, rectSize);
  fill(230);
  triangle(rectX-75, rectY+20, rectX-30, rectY, rectX-30, rectY+50);    //A
  
    
  //-------- S --------
  if(overS)    //If mouse is over button
  {
    fill(rectHighlight);  //Highlight color for the button
  }
  else
  {
    fill(rectColor);    //Else color is the original color
  }
  rect(rectX+50, rectY+100, rectSize, rectSize);
  fill(230);
  triangle(rectX+25, rectY+80, rectX+50, rectY+125, rectX+75, rectY+80);     //S
  
  
  //-------- D --------
  if(overD)    //If mouse is over button
  {
    fill(rectHighlight);  //Highlight color for the button
  }
  else
  {
    fill(rectColor);    //Else color is the original color
  }
  rect(rectX+150, rectY+25, rectSize, rectSize);
  fill(230);
  triangle(rectX+175, rectY+25, rectX+130, rectY, rectX+130, rectY+50);  //D
}

void Car()
{
  fill(255, 40, 20);
  rect(0, 0, 100, -50);
  fill(255, 200);
  rect(-10, 0, 50, -30);
  fill(200);
  rect(-30, 27, 10, -5);
  rect(30, 27, 10, -5);
  rect(-30, -26, 10, -5);
  rect(30, -26, 10, -5);
  ellipse(40, -10, 7, 7);
  ellipse(40, 10, 7, 7);
}

void Road()
{
  fill(50);
  rect(width/2, height/2, 400, 1000);
  rect(width/2, height/2, 1000, 400);
}
