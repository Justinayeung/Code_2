float x1 = 200;
float y1 = 300;
float s1 = 100;
float x2 = 700;
float y2 = 500;
float s2 = 300;
float x3 = 400;
float y3 = 700;
float s3 = 50;
float totalTime = 1;
float endTime;
int _a = 0;
int _s = 1;
int _d = 2;
int _f = 3;
int _j = 4;
int _k = 5;
int _state = _a;
boolean isActive1, isActive2 = false;
Rect r1, r2, r3, r4, r5, r6;

void setup()
{
  size(1000, 1000);
  textAlign(CENTER);
  textSize(30);
  totalTime *= 1000;
}

void draw()
{
  allRect();
  switch(_state)
  {
    case 0:
      rect1();
    break;
    case 1:
      rect2();
    break;
    case 2:
      rect3();
    break;
    case 3:
      rect4();
    break;
    case 4:
      rect5();
    break;
    case 5:
      rect6();
    break;
  }
}

void keyTyped()
{
  isActive1 = true;
  isActive2 = true;
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
    case 'j':
      _state = _j;
    break;
    case 'k':
      _state = _k;
    break;
  }
  endTime = millis() + totalTime;
}

void allRect()
{
  r1 = new Rect(x1, y1, s1, s1);
  r1.display();
  fill(255);
  text("a", x1+s1/2, y1+s1/2);
  r2 = new Rect(x2, y2, s3, s1);
  r2.display();
  fill(255);
  text("s", x2+s3/2, y2+s1/2); 
  r3 = new Rect(x3, y3, s3, s1);
  r3.display();
  fill(255);
  text("d", x3+s3/2, y3+s1/2);
  r4 = new Rect(x1, y2, s2, s1);
  r4.display();
  fill(255);
  text("f", x1+s2/2, y2+s1/2);
  r5 = new Rect(x3, y1, s3, s3);
  r5.display();
  fill(255);
  text("j", x3+s3/2, y1+s3/2);  
  r6 = new Rect(x2, y1, s3, s3);
  r6.display();
  fill(255);
  text("k", x2+s3/2, y1+s3/2); 
}

void rect1()
{
  if(isActive1)
  {
    r1 = new Rect(x1, y1, s1, s1);
    r1.active();
    fill(255);
    text("a", x1+s1/2, y1+s1/2);
  }
}

void rect2()
{
  if(isActive2)
  {
    r2 = new Rect(x2, y2, s3, s1);
    r2.active();
    fill(255);
    text("s", x2+s3/2, y2+s1/2); 
  }
}

void rect3()
{
  r3 = new Rect(x3, y3, s3, s1);
  r3.active();
  fill(255);
  text("d", x3+s3/2, y3+s1/2);
}

void rect4()
{
  r4 = new Rect(x1, y2, s2, s1);
  r4.active();
  fill(255);
  text("f", x1+s2/2, y2+s1/2);
}

void rect5()
{
  r5 = new Rect(x3, y1, s3, s3);
  r5.active();
  fill(255);
  text("j", x3+s3/2, y1+s3/2); 
}

void rect6()
{
  r6 = new Rect(x2, y1, s3, s3);
  r6.active();
  fill(255);
  text("k", x2+s3/2, y1+s3/2); 
}

void mouseClicked()
{
  if(mouseX > x1 && mouseX < x1+s1 && mouseY > y1 && mouseY < y1+s1)
  {
    isActive1 = true;
    rect1();
    endTime = millis() + totalTime;
  }
  if(mouseX > x2 && mouseX < x2+s3 && mouseY > y2 && mouseY < y2+s1)
  {
    isActive2 = true;
    rect2();
    endTime = millis() + totalTime;
  }
}
