//PVector circ, circ1;
//float dist = 50;
//int numObjects = 5;
//float startOffsetAngle = 0;
//float offset = radians(90);
float degrees = 45;

void setup()
{
  size(800, 800);
  colorMode(HSB, TWO_PI, 100, 100);
  noStroke();
  //circ = new PVector(100, 0);
  //circ.rotate(radians(startOffsetAngle));
}

void draw()
{
  background(0);
  degrees += 1;
  //circ.rotate(radians(startOffsetAngle));
  //fill(255, 255, 255);
  //ellipse((width/2)+circ.x, (height/2)+circ.y, 50, 50);
  float x = cos(radians(degrees))*100;
  float y = sin(radians(degrees))*100;
  ellipse((width/2)+x, (height/2)+y, 50, 50);
}

void keyPressed()
{
  float offset = radians(90);
  //float offset1 = radians(-90);
  float x1 = cos(radians(degrees)+offset)*100;
  float y1 = sin(radians(degrees)+offset)*100;
  if(key == CODED)
  {
    if(keyCode == UP)
    {
      //circ.rotate(radians(startOffsetAngle)+offset);
      //fill(255, 255, 255);
      //ellipse((width/2)+circ.x, (height/2)+circ.y, 50, 50);
      ellipse((width/2)+x1, (height/2)+y1+offset, 50, 50);
    }
    else if (keyCode == DOWN)
    {
      //circ.rotate(radians(startOffsetAngle)+offset1);
    }
  }
}
