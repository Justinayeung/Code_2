float x;    //ellipse position x
float y;    //ellipse position y
int size = 10;    //ellipse size
int size2 = 5;
float easing = 0.05f;    //easing amount (small number == slower, bigger number == faster)
Character c1;    //Defining class variable
Character c2;    //Defining class variable
Character c3;    //Defining class variable
float angle = 0;    //Angle = 0
float incr = 0.05;    //Increment = 0.05

void setup()
{
  rectMode(CENTER);
  size(600, 600);
  noStroke();
}

void draw()
{
  x += (mouseX - x) * easing;    
  //The character position x = (mouseX position is subtracted by the character's original position [- x has to be there or the character will move in the direction of the mouseX but won't return to it]) * easing 
  //[without * easing there wouldn't be an as significant slow movement returning to the ellipse]
  
  y += (mouseY - y) * easing;
  //The character position y = (mouseY position is subtracted by the character's original position [- y has to be there or the character will move in the direction of the mouseY but won't return to it]) * easing 
  //[without * easing there wouldn't be an as significant slow movement returning to the ellipse]
  
  if(mousePressed)    //if the mouse button is pressed then...
  {
    background(230, 20, 80);
    //redraw background
    
    c1 = new Character(pmouseX, pmouseY, width/2 + cos(angle) * 200, height/2 + sin(angle) * 200);    //Object moves to mouse on click
    c1.display();
    fill(50);
    
    c1 = new Character(x,y, width/2 + cos(angle * 2) * 250, height/2 + sin(angle) * 250);
    c2 = new Character(x,y, width/2 + cos(angle) * 150, height/2 + sin(angle * 2) * 150);
    c3 = new Character(x,y, width/2 + cos(angle * 0.5) * 50, height/2 + sin(angle) * 50);
    
    c1.animate();    //https://github.com/Justinayeung/Processing/blob/master/ALL%20SKETCHES/Week%2012/TrigSpin/TrigSpin.pde
    c2.animate();
    c3.animate();
    angle += incr;
    fill(150);

  }
  else    //else when mouse is not pressed
  {
    background(100, 30, 150);
    //redraw background
    
    //Calling character class
    //Calling character class
    c1 = new Character(x,y, width/2 + cos(angle) * 200, height/2 + sin(angle) * 200);    //Initializing character
    c1.display();    //character goes to mouse with easing
    fill(100);
    
    c1 = new Character(x,y, width/2 + cos(angle * 2) * 250, height/2 + sin(angle) * 250);
    c2 = new Character(x,y, width/2 + cos(angle) * 150, height/2 + sin(angle * 2) * 150);
    c3 = new Character(x,y, width/2 + cos(angle * 0.5) * 50, height/2 + sin(angle) * 50);
    
    c1.animate();    //https://github.com/Justinayeung/Processing/blob/master/ALL%20SKETCHES/Week%2012/TrigSpin/TrigSpin.pde
    c2.animate();
    c3.animate();
    angle += incr;
    fill(150);
  }
}

//------------------------------------------------------------------------------------------------------
//CLASS
//------------------------------------------------------------------------------------------------------

//PVector pos, velocity;
//float speed;

//void setup()
//{
//  pos = new PVector (0,0);
//  velocity = new PVector();
//}

//void draw()
//{
//  ellipse(pos.x, po.y, 20, 20);
  
//  velocity.x = mouseX - pos.x;
//  velocity.y = mouseY - pos.y;
//  velocity. normalize();    //If we didn't normalize the circle would go faster diagonally then going down
//  velocity.mult(speed);    //mult(Determines speed or how fast the ellipse would move)
//  pos.add(velocity);
//}
//------------------------------------------------------------------------------------------------------
//PVector pos1, pos2;
//pos1 = new PVector(20, 200);
//pos2 = new PVector(350, 200);

//line(pos1.x, pos1.y, pos2.x, pos2.y);
//float distance(pos2.x - pos1.x);
//float distY(pos2.y - pos1.y)
//distanceVec = new PVector(distX, distY);
//distanceVec.normalize();    //Make the vector 1 pixel long

//float circlePosX = distance/2 + pos1.x;    //Center of the line is position 2 - position 1 divided by 2 -- Adding pos1.x because it is where the pos1.x starts
//float circlePosY = distY/2 + pos1.y;
//ellipse(circlePosX, circlePosY, 10, 10);
//------------------------------------------------------------------------------------------------------
//PVector pos, velocy, target;
//float speed = 3;
//boolean isMoving = false;

//void draw()
//{
//  pushMatrix();
  
//  translate(pos.x, pos.y);
//  rotate(velocity.heading());
  
//  popMatrix();
  
//  if(isMoving == true)
//  {
//    velocity.x = target.x - pos.x;
//    velocity.y = target.y - pos.y;
//    velocity.normalize();
//    velocity.multi(speed);
//    pos.add(velocity);
    
//    float normalizedTime = (millis() - clickTime)/(endTime - clickTime);
//  }
  
//  ellipse(target.x, target.y, 5, 5);
  
//  if(dist(pos.x, pos.y, target.x, target.y) < speed)
//  {
//    isMoving = false;
//  }
  
//}

//void mouseClicked()
//{
//  target.x = mouseX;
//  target.y = mouseY;
//  isMoving = true;
//}
