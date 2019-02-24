Animation sleep, blink, right, left, down, up, click;
float endTimeBlink;
float toSleep = 3;
boolean isSleep = false;
boolean isBlink = true;
float xPos, yPos;
int _blink = 0;
int _sleep = 1;
int _right = 2;
int _left = 3;
int _down = 4;
int _click = 5;
int _state = _blink;

void setup()
{
  size(2000, 1000);
  blink = new Animation();
  sleep = new Animation();
  right = new Animation();
  left = new Animation();
  down = new Animation();
  up = new Animation();
  click = new Animation();
  toSleep *= 1000;
}

void draw()
{
  background(170, 200, 255);
  
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
       endTimeBlink = millis() + toSleep;
    break;
    case 's':
      _state = _down;
       endTimeBlink = millis() + toSleep;
    break;
    case 'd':
      _state = _right;
       endTimeBlink = millis() + toSleep;
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
