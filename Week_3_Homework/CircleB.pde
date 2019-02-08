class CircleB{
  float x;
  float y;
  int s;
  int sR = s/2;
  
  float edgeX = random(x-sR, x+sR);
  float edgeY = random(y-sR, y+sR);
  float d1 = dist(edgeX, edgeY, x, y);
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
