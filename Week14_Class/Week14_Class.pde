// HSB Color Wheel

//Hue: 0 -> 360
//Saturation: 0 -> 100
//Brightness: 0 -> 100

float angle = 35;
float dist = 100;

void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  //colorMode(RGB, 1000, 1000, 2);
  //background(0, 200, .4);
  colorMode(RGB);
  background(0, 25, 51);
  colorMode(HSB, 360, 100, 100);
  
  float x = cos( radians(angle)) * dist;
  float y = sin( radians(angle)) * dist;
  float x2 = cos( radians(angle) + radians(45)) * dist;
  float y2 = sin( radians(angle) + radians(45)) * dist;
  
  fill(0, 0, 100);
  ellipse(250, 250, 3, 3);
  fill(angle, 100, 100);
  ellipse(x + 250, y + 250, 30, 30);
  ellipse(x2 + 250, y2 + 250, 30, 30);
  
  //angle = int(atan((mouseY - 250)/(mouseX - 250)));
  //angle = int(degrees(atan2(mouseY-250, mouseX-250)));
  
  angle %= 360;
  if(angle < 0) angle += 360;
}

// Add in key presses to move the bigger circle
void keyPressed()
{
  if(key == '=')
  {
    angle ++;
  }
  if(key == '-')
  {
    angle --;
  }
}
