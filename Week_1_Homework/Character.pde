//https://github.com/Justinayeung/Processing/tree/master/ALL%20SKETCHES/Week%2011/ArrayObjects

class Character
{
  //Variables that is associated with the object
  float x;
  float y;
  float x1;
  float y1;
  
  //Initialization function to initialize character
  //Needs the parameters of x and y - so that it can be called (with the easing)
  Character(float x0, float y0, float x1_, float y1_)
  {
    //Passing values as parameters
    x = x0; 
    y = y0;
    x1 = x1_;
    y1 = y1_;
  }
  
  void display()    //Character art (x, y)
  {
    rect(x, y, 50, 30);
    rect(x, y-30, 50, 10);
    rect(x, y-20, size, size);
    rect(x+20, y-20, size, size);
    rect(x-20, y-20, size, size);
    rect(x-30, y-5, size, size);
    rect(x+30, y-5, size, size);
    rect(x-20, y-40, size, size);
    rect(x+20, y-40, size, size);
    rect(x-10, y+25, size, size);
    rect(x+10, y+25, size, size);
    rect(x-10, y+25, size, size);
    rect(x+10, y+25, size, size);
  }
  
  void animate()    //Character animations (x1, y1)
  {
    rect(x1, y1, 50, 30);
    rect(x1, y1-30, 50, 10);
    rect(x1, y1-20, size, size);
    rect(x1+20, y1-20, size, size);
    rect(x1-20, y1-20, size, size);
    rect(x1-30, y1-5, size, size);
    rect(x1+30, y1-5, size, size);
    rect(x1-20, y1-40, size, size);
    rect(x1+20, y1-40, size, size);
    rect(x1-10, y1+25, size, size);
    rect(x1+10, y1+25, size, size);
    rect(x1-10, y1+25, size, size);
    rect(x1+10, y1+25, size, size);
  }
  
  void animate2()    //Character animations (x1, y1)
  {
    rect(x1, y1, 50, 30);
    rect(x1, y1-30, 50, 10);
    rect(x1, y1-20, size, size);
    rect(x1+20, y1-20, size, size);
    rect(x1-20, y1-20, size, size);
    rect(x1-30, y1-5, size, size);
    rect(x1+30, y1-5, size, size);
    rect(x1-20, y1-40, size, size);
    rect(x1+20, y1-40, size, size);
    rect(x1-10, y1+25, size, size);
    rect(x1+10, y1+25, size, size);
    rect(x1-10, y1+25, size, size);
    rect(x1+10, y1+25, size, size);
  }
  
  void animate3()    //Character animations (x1, y1)
  {
    rect(x1, y1, 50, 30);
    rect(x1, y1-30, 50, 10);
    rect(x1, y1-20, size, size);
    rect(x1+20, y1-20, size, size);
    rect(x1-20, y1-20, size, size);
    rect(x1-30, y1-5, size, size);
    rect(x1+30, y1-5, size, size);
    rect(x1-20, y1-40, size, size);
    rect(x1+20, y1-40, size, size);
    rect(x1-10, y1+25, size, size);
    rect(x1+10, y1+25, size, size);
    rect(x1-10, y1+25, size, size);
    rect(x1+10, y1+25, size, size);
  }
}
