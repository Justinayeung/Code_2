PVector pos, velocity;
float speed = 3;
float angle = 0;

int rectX, rectY;
int rectSize = 80;
int xPosition2 = width/2;
int xPosition3 = width/2 + 500;
int xPosition4 = width/2;
int xPosition5 = width/2 + 500;
color rectColor;
color rectHighlight;
boolean overW = false;
boolean overA = false;
boolean overS = false;
boolean overD = false;
String display = "Level 1";

void setup()
{
  size(1000, 1000);
  rectMode(CENTER);
  noStroke();

  pos = new PVector(width/2, 900);
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
  Collision();
  drawText();
  
  if(display == "Game Over" || display == "You Win!")
  {
    //Positiion of x on the cars will not move
    xPosition2 += 0;
    xPosition3 += 0;
    xPosition4 -= 0;
    xPosition5 -= 0;
  }
  else
  {
    //Position of x on the cars will be continuously moving
    xPosition2 += 3;
    xPosition3 += 3;
    xPosition4 -= 4;
    xPosition5 -= 4;
  }
  Car2();
  Car3();
  Car4();
  Car5();
  
  if(xPosition2 > width + rectSize)
  {
    xPosition2 = 0 - rectSize;
  }
  else if(xPosition3 > width + rectSize)
  {
    xPosition3 = 0 - rectSize;
  }
  else if(xPosition4 < 0 - rectSize)
  {
    xPosition4 = width + rectSize;
  }
  else if(xPosition5 < 0 - rectSize)
  {
    xPosition5 = width + rectSize;
  }
  
  //https://github.com/bennorskov/Parsons-Code-2-2019/blob/master/Week%202/Quiz/buttonQuiz/buttonQuiz.pde
  Buttons();    
  Input();

  //https://processing.org/reference/PVector_heading_.html
  translate(pos.x+25, pos.y-10);
  rotate(velocity.heading());
  
  if(display == "Game Over")    //If Game Over
  {
    //Do not draw Car()
  }
  else
  {
    Car();
  }
  
  if(pos.y <= 250)
  {
    display = "You Win!";
  }
}

void Input()
{
  //Moving using keyboard
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
  
  if(mouseX > rectX && mouseX < (rectX)+rectSize && mouseY > (rectY)-120 && mouseY < (rectY+rectSize)-120)
  {
    overW = true;
    velocity.y = -speed;
  }
  else if(mouseX > (rectX)-110 && mouseX < (rectX + rectSize)-110 && mouseY > rectY-15 && mouseY < (rectY+rectSize)-15)
  {
    overA = true;
    velocity.x = -speed;
  }
  else if(mouseX > rectX && mouseX < rectX+rectSize && mouseY > rectY+60 && mouseY < (rectY+rectSize)+60)
  {
    overS = true;
    velocity.y = speed;
  }  
  else if(mouseX > (rectX)+110 && mouseX < (rectX+rectSize)+110 && mouseY > rectY-15 && mouseY < (rectY+rectSize)-15)
  {
    overD = true;
    velocity.y = speed;
  }
  else
  {
    overW = false;
    overA = false;
    overS = false;
    overD = false;
    velocity.x = 0;
    velocity.y = 0;
  }
  
  velocity.normalize();
  velocity.mult(speed);
  pos.add(velocity);
}

void Buttons()
{
  //---------- W ----------
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
  triangle(rectX+25, rectY-40, rectX+50, rectY-85, rectX+75, rectY-40);    //UP
  
    
  //---------- A ----------
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
  triangle(rectX-75, rectY+20, rectX-30, rectY, rectX-30, rectY+50);    //LEFT
  
    
  //---------- S ----------
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
  triangle(rectX+25, rectY+80, rectX+50, rectY+125, rectX+75, rectY+80);     //DOWN
  
  
  //---------- D ----------
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
  triangle(rectX+175, rectY+25, rectX+130, rectY, rectX+130, rectY+50);  //RIGHT
}

void Car()    //Car you controll (Red)
{
  fill(255, 40, 20);
  rect(0, 0, 100, -50);    //Main rectangle
  fill(255, 200);
  rect(-10, 0, 50, -30);    //Top rectangle
  fill(200);
  rect(-30, 27, 10, -5);    //Wheel
  rect(30, 27, 10, -5);     //Wheel
  rect(-30, -26, 10, -5);   //Wheel
  rect(30, -26, 10, -5);    //Wheel
  ellipse(40, -10, 7, 7);   //Circle
  ellipse(40, 10, 7, 7);    //Circle
}

void Car2()    //Green Car
{
  fill(30, 100, 0);
  rect(xPosition2, (height/2)-100, 100, -50);
  fill(255, 200);
  rect(xPosition2-10, (height/2)-100, 50, -30);
  fill(200);
  rect(xPosition2-30, ((height/2)-100)+27, 10, -5);
  rect(xPosition2+30, ((height/2)-100)+27, 10, -5);
  rect(xPosition2-30, ((height/2)-100)-26, 10, -5);
  rect(xPosition2+30, ((height/2)-100)-26, 10, -5);
  ellipse(xPosition2+40, ((height/2)-100)-10, 7, 7);
  ellipse(xPosition2+40, ((height/2)-100)+10, 7, 7);
}

void Car3()    //Blue Car
{
  fill(30, 100, 150);
  rect(xPosition3, (height/2)-100, 100, -50);
  fill(255, 200);
  rect(xPosition3-10, (height/2)-100, 50, -30);
  fill(200);
  rect(xPosition3-30, ((height/2)-100)+27, 10, -5);
  rect(xPosition3+30, ((height/2)-100)+27, 10, -5);
  rect(xPosition3-30, ((height/2)-100)-26, 10, -5);
  rect(xPosition3+30, ((height/2)-100)-26, 10, -5);
  ellipse(xPosition3+40, ((height/2)-100)-10, 7, 7);
  ellipse(xPosition3+40, ((height/2)-100)+10, 7, 7);
}

void Car4()    //Yellow Car
{
  fill(150, 150, 0);
  rect(xPosition4, (height/2)+100, 100, -50);
  fill(255, 200);
  rect(xPosition4+10, (height/2)+100, 50, -30);
  fill(200);
  rect(xPosition4-30, ((height/2)+100)+27, 10, -5);
  rect(xPosition4+30, ((height/2)+100)+27, 10, -5);
  rect(xPosition4-30, ((height/2)+100)-26, 10, -5);
  rect(xPosition4+30, ((height/2)+100)-26, 10, -5);
  ellipse(xPosition4-40, ((height/2)+100)-10, 7, 7);
  ellipse(xPosition4-40, ((height/2)+100)+10, 7, 7);
}

void Car5()    //Pink Car
{
  fill(200, 100, 150);
  rect(xPosition5, (height/2)+100, 100, -50);
  fill(255, 200);
  rect(xPosition5+10, (height/2)+100, 50, -30);
  fill(200);
  rect(xPosition5-30, ((height/2)+100)+27, 10, -5);
  rect(xPosition5+30, ((height/2)+100)+27, 10, -5);
  rect(xPosition5-30, ((height/2)+100)-26, 10, -5);
  rect(xPosition5+30, ((height/2)+100)-26, 10, -5);
  ellipse(xPosition5-40, ((height/2)+100)-10, 7, 7);
  ellipse(xPosition5-40, ((height/2)+100)+10, 7, 7);
}

void Road()
{
  fill(50);
  rect(width/2, height/2, 400, 1000);
  rect(width/2, height/2, 1000, 400);
  
  fill(255, 255, 100);    //Yellow strips along the y
  rect(width/2, 0, 10, 100);
  rect(width/2, 200, 10, 100);
  rect(width/2, 800, 10, 100);
  rect(width/2, 1000, 10, 100);
  
  rect(0, height/2, 100, 10);    //Yellow strips along the x
  rect(200, height/2, 100, 10);
  rect(800, height/2, 100, 10);
  rect(1000, height/2, 100, 10);
}

void Collision()
{
  //dist(x, y, x1, y1);
  float d = dist(xPosition2, height/2-100, pos.x, pos.y);    //Checking the distance between green car and player
  float e = dist(xPosition3, height/2-100, pos.x, pos.y);    //Checking the distance between blue car and player
  float f = dist(xPosition4, height/2+100, pos.x, pos.y);    //Checking the distance between yellow car and player     
  float g = dist(xPosition5, height/2+100, pos.x, pos.y);    //Checking the distance between red car and player
  
  //If the distance is less than rectange(car) size than game over
  if(d <= rectSize)    //Green Car
  {
    display = "Game Over";
  }
  else if(e <= rectSize)    //Blue Car
  {
    display = "Game Over";
  }
  else if(f <= rectSize)    //Yellow Car
  {
    display = "Game Over";
  }
  else if(g <= rectSize)    //Pink Car
  {
    display = "Game Over";
  }
}

void drawText()    //https://github.com/bennorskov/Parsons-Code-2-2019/blob/master/Week%202/Quiz/buttonQuiz/buttonQuiz.pde
{
  fill(255);    //Color of text
  textSize(50);    //Size of text
  text(display, 400, 100);    //Where text is displayed
}
