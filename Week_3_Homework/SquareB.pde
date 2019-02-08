class SquareB{
  float x;
  float y;
  float s;
  color randC = color(random(0, 255), random(0, 255), random(0, 255));
  
  SquareB(float x0, float y0, float s0){
    x = x0;
    y = y0;
    s = s0;
  }
  
  void display(){
    fill(randC);
    rect(x, y, s, s);
  }
}
