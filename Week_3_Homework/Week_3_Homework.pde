int numC = 20;
int numR = 10;
float yC = 550;
float xC = 150;
float yR = 101;
float xR = 101;
int sizeR = 90;
int sizeC = 50;
int sizeCR = sizeC/2;
boolean Cclicked = false;
boolean Rmoved = false;

ArrayList<CircleB> circle = new ArrayList<CircleB>();
ArrayList<SquareB> rect = new ArrayList<SquareB>();

void setup()
{
  size(1000, 1000);
  noStroke();
  circle.add(new CircleB(xC, yC, sizeC));
  for(int i = 0; i < numR;  i++){
    for(int j = 0; j < numR; j++){
      rect.add(new SquareB(xR * i, yR * j, sizeR));
    }
  }
}

void draw(){
  background(0);
  for(CircleB c : circle){
    c.display();
  }
  for(SquareB r : rect){
    r.display();
  }
}

void mouseClicked(){
  float d1 = dist(mouseX, mouseY, xC, yC);
  if(d1 < sizeCR && Rmoved){
    Cclicked = true;
  }else{
    Cclicked = false;
  }
  println(Cclicked);
  
  if(Cclicked){
    fill(100, 30, 40);
  }else{
    fill(100, 200);
  }
}
