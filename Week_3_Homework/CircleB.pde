class CircleB{
  float x;
  float y;
  int s;
  boolean Cclicked = false;
  
  CircleB(float x0, float y0, int s0){
    x = x0;
    y = y0;
    s = s0;
  }
  
  void display(){
      ellipse(x, y, s, s);
    }
}
