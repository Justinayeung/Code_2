class SquareB{
  float x;
  float y;
  float s;
  SquareB(float x0, float y0, float s0){
    x = x0;
    y = y0;
    s = s0;
  }
  
  void display(){
    rectMode(CORNER);
    rect(x, y, s, s);
  }
}
