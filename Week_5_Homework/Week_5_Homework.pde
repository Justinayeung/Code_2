Animation sleep, blink, right, left, down, up, click;
Clouds c1, c2, c3, c4, c5;
float endTimeBlink, endTimeRight, endTimeLeft, endTimeDown;
float toSleep = 3;
float totalTime = 2;
boolean isSleep = false;
boolean isBlink = true;
float xPos, yPos;
float xC1, yC1, xC2, yC2, xC3, yC3, xC4, yC4, xC5, yC5;
int _blink = 0;
int _sleep = 1;
int _right = 2;
int _left = 3;
int _down = 4;
int _click = 5;
int _state = _blink;

void setup()
{
  frameRate(60);
  size(2000, 1000);
  blink = new Animation();
  sleep = new Animation();
  right = new Animation();
  left = new Animation();
  down = new Animation();
  up = new Animation();
  click = new Animation();
  totalTime *= 1000;
  toSleep *= 1000;
  c1 = new Clouds();
  c2 = new Clouds();
  c3 = new Clouds();
  c4 = new Clouds();
  c5 = new Clouds();
}

void draw()
{
  noStroke();
  background(170, 200, 255);
  fill(170, 240, 170);
  rect(0, 400, 2000, 600);
  clouds();
  switch(_state)
  {
    case 0:
      blink.displayBlink();
    break;
    case 1:
      sleep.displaySleep();
    break;
    case 2:
      right.displayRight();
    break;
    case 3:
      left.displayLeft();
    break;
    case 4:
      down.displayDown();
    break;
    case 5:
      click.bunClicked();
    break;
  }
}

void keyTyped()
{
  switch(key)
  {
    case 'w':
      isBlink = true;
      _state = _blink;
      endTimeBlink = millis() + toSleep;
    break;
    case 'a':
      _state = _left;
       endTimeLeft = millis() + toSleep;
    break;
    case 's':
      _state = _down;
       endTimeDown = millis() + toSleep;
    break;
    case 'd':
      _state = _right;
       endTimeRight = millis() + toSleep;
    break;
  }
}

void mouseClicked()
{
  if(mouseX > 920 && mouseX <1020 && mouseY < 530 && mouseY > 430)
  {
    _state = _click;
    endTimeBlink = millis() + toSleep;
  }
}

void clouds()
{
  c1.display1();
  c1.boundaries();
  c2.display2();
  c2.boundaries();
  c3.display3();
  c3.boundaries();
  c4.display4();
  c4.boundaries();
  c5.display5();
  c5.boundaries();
}
