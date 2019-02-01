PVector pos, velocity;
float speed;
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
  
  pos = new PVector(0, 0);
  velocity = new PVector();
  
  rectColor = color (150, 200, 210);
  rectHighlight = color(150, 200, 250);
  rectX = 3 * (width/4);
  rectY = 3 * (height/4) + 80;
}

void draw()
{
  background(170, 200, 210);
  Car();
 
  //https://github.com/bennorskov/Parsons-Code-2-2019/blob/master/Week%202/Quiz/buttonQuiz/buttonQuiz.pde
  Buttons();    
  Input();
  
  fill(230);
  triangle(rectX+15, rectY-60, rectX+40, rectY-105, rectX+65, rectY-60);    //W
  triangle(rectX-105, rectY+40, rectX-60, rectY+15, rectX-60, rectY+65);    //A
  triangle(rectX+15, rectY+20, rectX+40, rectY+65, rectX+65, rectY+20);     //S
  triangle(rectX+185, rectY+40, rectX+140, rectY+15, rectX+140, rectY+65);  //D
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
  
  if(mouseX > 3 * (width/4) && 
     mouseX < (3 * (width/4))+rectSize && 
     mouseY > (3 * (height/4) + 80)-120 && 
     mouseY < ((3 * (height/4) + 80)+rectSize)-120)
    {
      overW = true;
    }
    else
    {
      overW = false;
    }
  
  
  if(mouseX > (3 * (width/4))-120 && 
     mouseX < ((3 * (width/4))+rectSize)-120 && 
     mouseY > 3 * (height/4) + 80 && 
     mouseY < (3 * (height/4) + 80)+rectSize)
    {
      overA = true;
    }
    else
    {
      overA = false;
    }
  
  
  if(mouseX > 3 * (width/4) && 
     mouseX < (3 * (width/4))+rectSize && 
     mouseY > 3 * (height/4) + 80 && 
     mouseY < (3 * (height/4) + 80)+rectSize)
    {
      overS = true;
    }
    else
    {
      overS = false;
    }
  
  if(mouseX > (3 * (width/4))+120 && 
     mouseX < ((3 * (width/4))+rectSize)+120 && 
     mouseY > 3 * (height/4) + 80 && 
     mouseY < (3 * (height/4) + 80)+rectSize)
    {
      overD = true;
    }
    else
    {
      overD = false;
    }
    
  if(overW)
  {
    velocity.y = -2;
  }
  else if(overS)
  {
    velocity.y = 2;
  }
  else
  {
    velocity.x = 0;
    velocity.y = 0;
  }
  pos.add(velocity);
  
  if(overA)
  {
    pushMatrix();
    translate(pos.x, pos.y);
    pos.rotate(angle * 0.0001 * -TWO_PI);
    angle++;
    popMatrix();
  }
  else if(overD)
  {
    pushMatrix();
    translate(pos.x, pos.y);
    pos.rotate(angle * 0.0001 * TWO_PI);
    angle++;
    popMatrix();
  }
  else
  {
    angle = 0;
  }
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
  rect(rectX, rectY-120, rectSize, rectSize);
  
    
  //-------- A --------
  if(overA)    //If mouse is over button
  {
    fill(rectHighlight);  //Highlight color for the button
  }
  else
  {
    fill(rectColor);    //Else color is the original color
  }
  rect(rectX-120, rectY, rectSize, rectSize);
  
    
  //-------- S --------
  if(overS)    //If mouse is over button
  {
    fill(rectHighlight);  //Highlight color for the button
  }
  else
  {
    fill(rectColor);    //Else color is the original color
  }
  rect(rectX, rectY, rectSize, rectSize);
  
  
  //-------- D --------
  if(overD)    //If mouse is over button
  {
    fill(rectHighlight);  //Highlight color for the button
  }
  else
  {
    fill(rectColor);    //Else color is the original color
  }
  rect(rectX+120, rectY, rectSize, rectSize);
}

void Car()
{
  fill(230);
  rect(pos.x, pos.y, 50, 100);
  fill(250);
  rect(pos.x+10, pos.y+25, 30, 50);
  fill(50);
  rect(pos.x-5, pos.y+10, 5, 10);
  rect(pos.x-5, pos.y+80, 5, 10);
  rect(pos.x+50, pos.y+10, 5, 10);
  rect(pos.x+50, pos.y+80, 5, 10);
}
