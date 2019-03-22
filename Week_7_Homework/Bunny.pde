class Bunny
{
  float x = 0;
  float y = -50;
  float size = 100;
  int _blink = 0;
  int _sleep = 1;
  int _right = 2;
  int _left = 3;
  int _down = 4;
  int _click = 5;
  int _hop = 6;
  int _swim = 7;
  int _state = _blink;
  float[][] stateChoices = {
    //Blink, Sleep, Right, Left, Down, Hop
    {.15, .15, .15, .15, .15, .15, .1},
    {.1, .15, .15, .15, .15, .15, .15},
    {.15, .15, .15, .15, .15, .1, .15},
    {.15, .1, .15, .15, .15, .15, .15},
    {.15, .15, .1, .15, .15, .15, .15},
    {.15, .15, .15, .15, .15, .1, .15},
    {.15, .15, .15, .1, .15, .15, .15},
  };
  
  PVector vel, pos;
  int facingDirection = 1;
  float speed = 15;
  float hopSpeed = 10;
  
  int numBlink = 2;
  PImage[] bunBlink = new PImage[numBlink];
  int frameBlink = frameCount % bunBlink.length;
  
  int numSleep = 3;
  PImage[] bunSleep = new PImage[numSleep];
  int frameSleep = frameCount % bunSleep.length;
  
  int numRight = 15;
  PImage[] bunRight = new PImage[numRight];
  int frameRight = frameCount % bunRight.length;
  
  int numLeft = 15;
  PImage[] bunLeft = new PImage[numLeft];
  int frameLeft = frameCount % bunLeft.length;
  
  int numDown = 14;
  PImage[] bunDown = new PImage[numDown];
  int frameDown = frameCount % bunDown.length; 
  
  int numHop = 11;
  PImage[] bunHop = new PImage[numHop];
  int frameHop = frameCount % bunHop.length;
  
  int numSwim = 23;
  PImage[] bunSwim = new PImage[numSwim];
  int frameSwim = frameCount % bunSwim.length;
  
  boolean chooseNewDirection = true;
  
  Bunny()
  {
    vel = new PVector(0, 0);
    pos = new PVector(random(width), random(0, 700));
    
    //Blink
    bunBlink[0] = loadImage("Bun0.png");
    bunBlink[1] = loadImage("Bun1.png");
    
    //Sleep
    bunSleep[0] = loadImage("Bun1.png");
    bunSleep[1] = loadImage("Bun2.png");
    bunSleep[2] = loadImage("Bun3.png");
    
    //Right
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
    
    //Left
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
      
    //Down
    bunDown[0] = loadImage("BunRoll0.png");
    bunDown[1] = loadImage("BunRoll1.png");
    bunDown[2] = loadImage("BunRoll2.png");
    bunDown[3] = loadImage("BunRoll3.png");
    bunDown[4] = loadImage("BunRoll4.png");
    bunDown[5] = loadImage("BunRoll5.png");
    bunDown[6] = loadImage("BunRoll6.png");
    bunDown[7] = loadImage("BunRoll7.png");
    bunDown[8] = loadImage("BunRoll8.png");
    bunDown[9] = loadImage("BunRoll9.png");
    bunDown[10] = loadImage("BunRoll10.png");
    bunDown[11] = loadImage("BunRoll11.png");
    bunDown[12] = loadImage("BunRoll12.png");
    bunDown[13] = loadImage("BunRoll13.png");
    
    //Hop
    bunHop[0] = loadImage("BunHop1.png");
    bunHop[1] = loadImage("BunHop2.png");
    bunHop[2] = loadImage("BunHop3.png");
    bunHop[3] = loadImage("BunHop4.png");
    bunHop[4] = loadImage("BunHop5.png");
    bunHop[5] = loadImage("BunHop6.png");
    bunHop[6] = loadImage("BunHop7.png");
    bunHop[7] = loadImage("BunHop8.png");
    bunHop[8] = loadImage("BunHop9.png");
    bunHop[9] = loadImage("BunHop10.png");
    bunHop[10] = loadImage("BunHop11.png");
    
    //Swim
    bunSwim[0] = loadImage("BunSwim1.png");
    bunSwim[1] = loadImage("BunSwim2.png");
    bunSwim[2] = loadImage("BunSwim3.png");
    bunSwim[3] = loadImage("BunSwim4.png");
    bunSwim[4] = loadImage("BunSwim5.png");
    bunSwim[5] = loadImage("BunSwim6.png");
    bunSwim[6] = loadImage("BunSwim7.png");
    bunSwim[7] = loadImage("BunSwim8.png");
    bunSwim[8] = loadImage("BunSwim9.png");
    bunSwim[9] = loadImage("BunSwim10.png");
    bunSwim[10] = loadImage("BunSwim11.png");
    bunSwim[11] = loadImage("BunSwim12.png");
    bunSwim[12] = loadImage("BunSwim13.png");
    bunSwim[13] = loadImage("BunSwim14.png");
    bunSwim[14] = loadImage("BunSwim15.png");
    bunSwim[15] = loadImage("BunSwim16.png");
    bunSwim[16] = loadImage("BunSwim17.png");
    bunSwim[17] = loadImage("BunSwim18.png");
    bunSwim[18] = loadImage("BunSwim19.png");
    bunSwim[19] = loadImage("BunSwim20.png");
    bunSwim[20] = loadImage("BunSwim21.png");
    bunSwim[21] = loadImage("BunSwim22.png");
    bunSwim[22] = loadImage("BunSwim23.png");
  }
  
  void update()
  {
    pos.add(vel);
    
    if(pos.y < 100)
    {
      vel = new PVector(-facingDirection * speed * .4, hopSpeed);
    }
    if(pos.x > 900)
    {
      vel = new PVector(facingDirection *= -1 * speed, 0);
    }
    else if(pos.x < 100)
    {
      vel = new PVector(facingDirection *= -1 * speed, 0);
    }
  
    if(chooseNewDirection)
    {
      facingDirection = (random(1) < .5) ? 1: -1;
      chooseNewDirection = false;
    }
    
    switch(_state)
    {
      case 0:  //Blink
      case 1:  //Sleep
      case 6:  //Swim
        vel = new PVector(0, 0);
        break;
      case 2:  //Right
      case 3:  //Left
      case 4:  //Down
      case 5:  //Hop
        vel = new PVector(-facingDirection * speed * .4, random(-hopSpeed, hopSpeed));
        break;
    }
  }
  
  
  void displayCharacter()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    scale(facingDirection, 1);
    
    switch(_state)
    {
      case 0:  //Blink
        displayBlink();
        break;
      case 1:  //Sleep
        displaySleep();
        break;
      case 2:  //Right
        displayRight();
        break;
      case 3:  //Left
        displayLeft();
        break;
      case 4:  //Down
        displayDown();
        break;
      case 5:  //Hop
        displayHop();
        break;
      case 6:  //Swim
        if(pos.y > 600 && pos.y < 700)
        {
          displaySwim();
        }
        else
        {
          _state = getNewState();
          chooseNewDirection = true;
        }
        break;
    }
    popMatrix();
  }
  
  void displayBlink()
  {
    image(bunBlink[frameBlink], 0, 0);
    frameBlink++;
    if(frameBlink>=numBlink)
    {
      _state = getNewState();
      chooseNewDirection = true;
    }
  }
  
  void displaySleep()
  {
    image(bunSleep[frameSleep], 0, 0);
    frameSleep++;
    if(frameSleep>=numSleep)
    {
      _state = getNewState();
      chooseNewDirection = true;
    }
  }
  
  void displayRight()
  {
    image(bunRight[frameRight], 0, 0);
    frameRight++;
    if(frameRight>=numRight)
    {
      _state = getNewState();
      chooseNewDirection = true;
    }
  }
  
  void displayLeft()
  {
    image(bunLeft[frameLeft], 0, 0);
    frameLeft++;
    if(frameLeft>=numLeft)
    {
      _state = getNewState();
      chooseNewDirection = true;
    }
  }
  
  void displayDown()
  {
    image(bunDown[frameDown], 0, 0);
    frameDown++;
    if(frameDown>=numDown)
    {
      _state = getNewState();
      chooseNewDirection = true;
    }
  }
  
  void displayHop()
  {
    image(bunHop[frameHop], 0, 0);
    frameHop++;
    if(frameHop>=numHop)
    {
      _state = getNewState();
      chooseNewDirection = true;
    }
  }
  
  void displaySwim()
  {
    image(bunSwim[frameSwim], 0, 0);
    frameSwim++;
    if(frameSwim>=numSwim)
    {
      _state = getNewState();
      chooseNewDirection = true;
    }
  }
  
  int getNewState()
  {
    frameBlink = 0;
    frameSleep = 0;
    frameRight = 0;
    frameLeft = 0;
    frameDown = 0;
    frameHop = 0;
    frameSwim = 0;
    float rand = random(1);
    float currentTotal = 0;
    float[] range = stateChoices[_state];
    for(int i = 0; i<range.length; i++)
    {
      currentTotal += range[i];
      if(rand < currentTotal)
      {
        return i;
      }
    }
    return 0;
  }
}
