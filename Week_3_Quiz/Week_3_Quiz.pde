int numDrops = 60;
int numClouds = 30;

ArrayList<rainDrops> drops = new ArrayList<rainDrops>();
ArrayList<Clouds> clouds = new ArrayList<Clouds>();

void setup()
{ 
  size(500, 1000);
  
  //for(int i = 0; i < width; i++)
  //{
  //  for(int j = 0; j < height; j++)
  //  {
  //    float r = map(i, 0, width, 0, 255);
  //    float g = map(i, 0, height, 0, 255);
  //    fill(r, g, 10);
  //  }
  //}
    
  for(int i = 0; i < numDrops; i++)
  {
    drops.add(new rainDrops(random(0, width), random(0, height), 10, 4));
    drops.add(new rainDrops(random(0, width), random(0, height), 10, 6));
  }
  
  for(int i = 0; i < numClouds; i++)
  {
    clouds.add(new Clouds(random(0, width), random(0, height/2), 20, 1));
    clouds.add(new Clouds(random(0, width), random(0, height), 10, 0.5));
  }
}

void draw()
{ 
  background(30, 0, 70);
  
  for(rainDrops d : drops)
  {
    d.display();
    d.fall();
  }
  
  for(Clouds c : clouds)
  {
    c.display();
    c.move();
  }
}
