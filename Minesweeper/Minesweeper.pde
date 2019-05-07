/*

Minesweeper Logic
-----------------------------------------------
An arraylist for grid (x, y, w, h)
An arraylist for mines that spawn at random positions
Number of flags you can place down = relevnant to total mine #
When you click a bomb you die
When you don't click a bomb change color and add number
  If num = 0, reveal surrounding area nums
Add a "flag" on the grid
Boolean for if square bomb was revealed or not
Revealed number shows how much mines are in the area

*/

PFont font;
int gridW = 20;
int gridH = 20;
int numMines;

int[][]mines;
boolean[][]revealed;

float r, c;
float[][] gridX = new float[gridW][gridH];
float[][] gridY = new float[gridW][gridH];

void setup()
{
  size(1000, 1000);
  //textSize
  //textFont
  //textAlign(CENTER);
  r = width/gridW;
  c = height/gridH;
  for(int x = 0; x < gridW; x++)
  {
    for(int y = 0; y < gridH; y++)
    {
      gridX[x][y] = x * r;
      gridY[x][y] = y * c;
    }
  }
}

void draw()
{
  for(int x = 0; x < gridW; x++)
  {
    for(int y = 0; y < gridH; y++)
    {
      rect(gridX[x][y], gridY[x][y], r, c);
    }
  }
}
