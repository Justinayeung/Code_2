//PVector circ, circ1;
//float dist = 50;
//int numObjects = 5;
//float startOffsetAngle = 0;
//float offset = radians(90);
float degrees = 45;
int _a = 0;
int _s = 1;
int _d = 2;
int _f = 3;
int _h = 4;
int _j = 5;
int _k = 6;
int _l = 7;
int _state = _a;

void setup()
{
  size(800, 800);
  //colorMode(HSB, TWO_PI, 100, 100);
  noStroke();
  //circ = new PVector(100, 0);
  //circ.rotate(radians(startOffsetAngle));
}

//This is definitely the terrible way to do this
void draw()
{
  background(0);
  degrees += 1;
  //circ.rotate(radians(startOffsetAngle));
  //fill(255, 255, 255);
  //ellipse((width/2)+circ.x, (height/2)+circ.y, 50, 50);
  float x = cos(radians(degrees))*100;
  float y = sin(radians(degrees))*100;
  float offset = radians(45);
  float x1 = cos(radians(degrees)+offset)*100;
  float y1 = sin(radians(degrees)+offset)*100;
  float offset1 = radians(90);
  float x2 = cos(radians(degrees)+offset1)*100;
  float y2 = sin(radians(degrees)+offset1)*100;
  float offset2 = radians(135);
  float x3 = cos(radians(degrees)+offset2)*100;
  float y3 = sin(radians(degrees)+offset2)*100;
  float offset3 = radians(180);
  float x4 = cos(radians(degrees)+offset3)*100;
  float y4 = sin(radians(degrees)+offset3)*100;
  float offset4 = radians(225);
  float x5 = cos(radians(degrees)+offset4)*100;
  float y5 = sin(radians(degrees)+offset4)*100;
  float offset5 = radians(270);
  float x6 = cos(radians(degrees)+offset5)*100;
  float y6 = sin(radians(degrees)+offset5)*100;
  float offset6 = radians(315);
  float x7 = cos(radians(degrees)+offset6)*100;
  float y7 = sin(radians(degrees)+offset6)*100;
  switch(_state)
  {
    case 0:
      fill(255, 0, 0);
      ellipse((width/2)+x, (height/2)+y, 50, 50);
    break;
    case 1:
      fill(255, 0, 0);
      ellipse((width/2)+x, (height/2)+y, 50, 50);
      fill(255, 255, 0);
      ellipse((width/2)+x1, (height/2)+y1, 50, 50);
    break;
    case 2:
      fill(255, 0, 0);
      ellipse((width/2)+x, (height/2)+y, 50, 50);
      fill(255, 255, 0);
      ellipse((width/2)+x1, (height/2)+y1, 50, 50);
      fill(0, 255, 50);
      ellipse((width/2)+x2, (height/2)+y2, 50, 50);
    break;
    case 3:
      fill(255, 0, 0);
      ellipse((width/2)+x, (height/2)+y, 50, 50);
      fill(255, 255, 0);
      ellipse((width/2)+x1, (height/2)+y1, 50, 50);
      fill(0, 255, 50);
      ellipse((width/2)+x2, (height/2)+y2, 50, 50);
      fill(0, 255, 150);
      ellipse((width/2)+x3, (height/2)+y3, 50, 50);
    break;
    case 4:
      fill(255, 0, 0);
      ellipse((width/2)+x, (height/2)+y, 50, 50);
      fill(255, 255, 0);
      ellipse((width/2)+x1, (height/2)+y1, 50, 50);
      fill(0, 255, 50);
      ellipse((width/2)+x2, (height/2)+y2, 50, 50);
      fill(0, 255, 150);
      ellipse((width/2)+x3, (height/2)+y3, 50, 50);
      fill(0, 200, 255);
      ellipse((width/2)+x4, (height/2)+y4, 50, 50);
    break;
    case 5:
      fill(255, 0, 0);
      ellipse((width/2)+x, (height/2)+y, 50, 50);
      fill(255, 255, 0);
      ellipse((width/2)+x1, (height/2)+y1, 50, 50);
      fill(0, 255, 50);
      ellipse((width/2)+x2, (height/2)+y2, 50, 50);
      fill(0, 255, 150);
      ellipse((width/2)+x3, (height/2)+y3, 50, 50);
      fill(0, 200, 255);
      ellipse((width/2)+x4, (height/2)+y4, 50, 50);
      fill(0, 0, 255);
      ellipse((width/2)+x5, (height/2)+y5, 50, 50);
    break;
    case 6:
      fill(255, 0, 0);
      ellipse((width/2)+x, (height/2)+y, 50, 50);
      fill(255, 255, 0);
      ellipse((width/2)+x1, (height/2)+y1, 50, 50);
      fill(0, 255, 50);
      ellipse((width/2)+x2, (height/2)+y2, 50, 50);
      fill(0, 255, 150);
      ellipse((width/2)+x3, (height/2)+y3, 50, 50);
      fill(0, 200, 255);
      ellipse((width/2)+x4, (height/2)+y4, 50, 50);
      fill(0, 0, 255);
      ellipse((width/2)+x5, (height/2)+y5, 50, 50);
      fill(150, 0, 255);
      ellipse((width/2)+x6, (height/2)+y6, 50, 50);
    break;
    case 7:
      fill(255, 0, 0);
      ellipse((width/2)+x, (height/2)+y, 50, 50);
      fill(255, 255, 0);
      ellipse((width/2)+x1, (height/2)+y1, 50, 50);
      fill(0, 255, 50);
      ellipse((width/2)+x2, (height/2)+y2, 50, 50);
      fill(0, 255, 150);
      ellipse((width/2)+x3, (height/2)+y3, 50, 50);
      fill(0, 200, 255);
      ellipse((width/2)+x4, (height/2)+y4, 50, 50);
      fill(0, 0, 255);
      ellipse((width/2)+x5, (height/2)+y5, 50, 50);
      fill(150, 0, 255);
      ellipse((width/2)+x6, (height/2)+y6, 50, 50);
      fill(255, 0, 255);
      ellipse((width/2)+x7, (height/2)+y7, 50, 50);
    break;
  }
}

void keyTyped()
{
  switch(key)
  {
    case 'a':
      _state = _a;
    break;
    case 's':
      _state = _s;
    break;
    case 'd':
      _state = _d;
    break;
    case 'f':
      _state = _f;
    break;
    case 'h':
      _state = _h;
    break;
    case 'j':
      _state = _j;
    break;
    case 'k':
      _state = _k;
    break;
    case 'l':
      _state = _l;
    break;
  }
}

//void keyPressed()
//{
//  float offset = radians(90);
//  //float offset1 = radians(-90);
//  float x1 = cos(radians(degrees)+offset)*100;
//  float y1 = sin(radians(degrees)+offset)*100;
//  if(key == CODED)
//  {
//    if(keyCode == UP)
//    {
//      //circ.rotate(radians(startOffsetAngle)+offset);
//      //fill(255, 255, 255);
//      //ellipse((width/2)+circ.x, (height/2)+circ.y, 50, 50);
//      ellipse((width/2)+x1, (height/2)+y1+offset, 50, 50);
//    }
//    else if (keyCode == DOWN)
//    {
//      //circ.rotate(radians(startOffsetAngle)+offset1);
//    }
//  }
//}
