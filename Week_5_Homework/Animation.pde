class Animation
{
  PImage [] bunBlink = new PImage[2];
  PImage [] bunSleep = new PImage[3];
  PImage [] bunRight = new PImage[15];
  PImage [] bunLeft = new PImage[15];
  PImage [] bunDown = new PImage[14];
  PImage [] bunClicked = new PImage[1];
  
  Animation()
  {
    bunBlink[0] = loadImage("Bun0.png");
    bunBlink[1] = loadImage("Bun1.png");
      bunSleep[0] = loadImage("Bun1.png");
      bunSleep[1] = loadImage("Bun2.png");
      bunSleep[2] = loadImage("Bun3.png");
    bunRight[0] = loadImage("Bun4.png");
    bunRight[1] = loadImage("Bun5.png");
    bunRight[2] = loadImage("Bun6.png");
    bunRight[3] = loadImage("Bun7.png");
    bunRight[4] = loadImage("Bun8.png");
    bunRight[5] = loadImage("Bun9.png");
    bunRight[6] = loadImage("Bun10.png");
    bunRight[7] = loadImage("Bun11.png");
    bunRight[8] = loadImage("Bun12.png");
    bunRight[9] = loadImage("Bun13.png");
    bunRight[10] = loadImage("Bun14.png");
    bunRight[11] = loadImage("Bun15.png");
    bunRight[12] = loadImage("Bun16.png");
    bunRight[13] = loadImage("Bun17.png");
    bunRight[14] = loadImage("BunL4.png");
      bunLeft[0] = loadImage("BunL4.png");
      bunLeft[1] = loadImage("BunL5.png");
      bunLeft[2] = loadImage("BunL6.png");
      bunLeft[3] = loadImage("BunL7.png");
      bunLeft[4] = loadImage("BunL8.png");
      bunLeft[5] = loadImage("BunL9.png");
      bunLeft[6] = loadImage("BunL10.png");
      bunLeft[7] = loadImage("BunL11.png");
      bunLeft[8] = loadImage("BunL12.png");
      bunLeft[9] = loadImage("BunL13.png");
      bunLeft[10] = loadImage("BunL14.png");
      bunLeft[11] = loadImage("BunL15.png");
      bunLeft[12] = loadImage("BunL16.png");
      bunLeft[13] = loadImage("BunL17.png");
      bunLeft[14] = loadImage("Bun4.png");
    bunDown[0] = loadImage("BunRoll0.png");
    bunDown[1] = loadImage("BunRoll1.png");
    bunDown[2] = loadImage("BunRoll2.png");
    bunDown[3] = loadImage("BunRoll3.png");
    bunDown[4] = loadImage("BunRoll4.png");
    bunDown[5] = loadImage("BunRoll5.png");
    bunDown[6] = loadImage("BunRoll6.png");
    bunDown[7] = loadImage("BunRoll6.png");
    bunDown[8] = loadImage("BunRoll5.png");
    bunDown[9] = loadImage("BunRoll4.png");
    bunDown[10] = loadImage("BunRoll3.png");
    bunDown[11] = loadImage("BunRoll2.png");
    bunDown[12] = loadImage("BunRoll1.png");
    bunDown[13] = loadImage("BunRoll0.png");
      bunClicked[0] = loadImage("Bun18.png");
  }
  
  void displayBlink()
  {
    if(isBlink)
    {
      frameRate(2);
      image(bunBlink[frameCount%2], xPos, yPos);
    }
    if(millis() > endTimeBlink)
    {
      isSleep = true;
      _state = _sleep;
    }
  }
  
  void displaySleep()
  {
    if(isSleep)
    {
      frameRate(2);
      image(bunSleep[frameCount%3], xPos, yPos);
    }
  }
  
  void displayRight()
  {   
    frameRate(6);
    image(bunRight[frameCount%15], xPos, yPos); 
    _state = _blink;
  }
  
  void displayLeft()
  {  
    frameRate(6);
    image(bunLeft[frameCount%15], xPos, yPos);
    _state = _blink;
  }
  
  void displayDown()
  {
    frameRate(6);
    image(bunDown[frameCount%14], xPos, yPos);
    _state = _blink;
  }
  
  void bunClicked()
  {
    image(bunClicked[frameCount%1], xPos, yPos);
    _state = _blink;
  }
}
