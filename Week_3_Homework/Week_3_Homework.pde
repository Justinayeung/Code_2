//https://processing.org/examples/mousefunctions.html
int numC;
int numR;
float yC;
float xC;
float yR;
float xR;
int sizeR;
int sizeC;
int sizeCR;
boolean Cclicked;
boolean movedR;
boolean overBox;
boolean locked;
float xOffset;
float yOffset;
CircleB c1;
SquareB r1;

void setup(){
  size(1000, 1000);
  noStroke();
  numC = 20;
  numR = 10;
  yC = 550;
  xC = 150;
  yR = 500;
  xR = 100;
  sizeR = 100;
  sizeC = 50;
  sizeCR = sizeC/2;
  Cclicked = false;
  movedR = false;
  overBox = false;
  locked = false;
  xOffset = 0;
  yOffset = 0;
}

void draw(){
  if(Cclicked){
    background(255, 255, 0);
  }else{
    background(0);
  }
  
  c1 = new CircleB(xC, yC, sizeC);
  c1.display();
  if(mouseX > xR && mouseX < xR+sizeR &&  mouseY > yR && mouseY < yR+sizeR){
    overBox = true;
  }else{
    overBox = false;
  }
  fill(245, 150, 150);
  r1 = new SquareB(xR, yR, sizeR);
  r1.display();
  
  float d2 = dist(xR, yR, xC, yC);
  if(d2 > sizeC){
    movedR = true;
  }else{
    movedR = false;
  }
  
  //explosion();
}

void mouseClicked(){
  float d1 = dist(mouseX, mouseY, xC, yC);
  if(d1 < sizeCR && movedR){
    Cclicked = true;
  }else{
    Cclicked = false;
  }
  println(Cclicked);
}

void mousePressed(){
  if(overBox){
    locked = true;
    fill(255, 255, 255);
  }else{
    locked = false;
  }
  xOffset = mouseX-xR;
  yOffset = mouseY-yR;
}

void mouseDragged(){
  if(locked){
    xR = mouseX-xOffset;
    yR = mouseY-yOffset;
  }
}

void mouseReleased(){
  locked = false;
}

void explosion(){
  fill(255);
  c1 = new CircleB(width/2, height/2, sizeCR);
  c1.display();
}
