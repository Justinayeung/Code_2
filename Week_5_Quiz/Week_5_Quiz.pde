float x1 = 200;
float y1 = 300;
float s1 = 100;
float x2 = 700;
float y2 = 500;
float s2 = 300;
float x3 = 400;
float y3 = 700;
float s3 = 50;
int totalTime = 2;
int endTime;
int _a = 0;
int _b = 1;
int _c = 2;
int _d = 3;
int _e = 4;
int _state = _a;
boolean isActive = false;
Rect r1, r2, r3, r4, r5;

void setup()
{
  size(1000, 1000);
  textAlign(CENTER);
  textSize(30);
}

void draw()
{
  rect1();
  rect2();
  rect3();
  rect4();
  rect5();
  switch(_state)
  {
    case 0:
      rect1();
    break;
  }
}

void keyTypes()
{
  isActive = true;
  switch(key)
  {
    case 'a':
      _state = _a;
    break;
    case 'b':
      _state = _b;
    break;
    case 'c':
      _state = _c;
    break;
    case 'd':
      _state = _d;
    break;
    case 'e':
      _state = _e;
    break;
  }
  endTime = millis() + totalTime;
}

void rect1()
{
  fill(0);
  r1 = new Rect(x1, y1, s1, s1);
  r1.display();
  fill(255);
  text("a", x1+s1/2, y1+s1/2);
  if(isActive)
  {
    fill(200, 10, 10);
    r1.display();
    if(millis() > endTime)
    {
      isActive = false;
    }
  }
}

void rect2()
{
  fill(0);
  r2 = new Rect(x2, y2, s3, s1);
  r2.display();
  fill(255);
  text("b", x2+s3/2, y2+s1/2); 
}

void rect3()
{
  fill(0);
  r3 = new Rect(x3, y3, s3, s1);
  r3.display();
  fill(255);
  text("c", x3+s3/2, y3+s1/2);  
}

void rect4()
{
  fill(0);
  r4 = new Rect(x1, y2, s2, s1);
  r4.display();
  fill(255);
  text("d", x1+s2/2, y2+s1/2);  
}

void rect5()
{
  fill(0);
  r5 = new Rect(x3, y1, s3, s3);
  r5.display();
  fill(255);
  text("e", x3+s3/2, y1+s3/2);  
}
