//-----------------------------------------------------------------------
//Marchov chain
//-----------------------------------------------------------------------
//char[] states = {'A', 'B', 'C', 'D', 'E', 'F'};
//float[] range = {.2,  .4,  .1,  .1,  .05, .15};
//float rand = random(1);

//println(rand);
//float current = 0;
//for(int i = 0; i<range.length; i++)
//{
//  //cycle through every range value
//  current += range[i];
//  if(rand < current)
//  {
//    println(states[i]); //set the state
//    break; //cancel the for loop once we find a value
//  }
//}
//-----------------------------------------------------------------------
/*
        home  school  work   boo's house
Home    .3      .3     .2      .2
School  .3      .1     .3      .3
Work    .7      0      .15     .15
Boo's   .1      .2     .3      .4

*/

//int home = 0;
//int school = 1;
//int work = 2;
//int boo = 3;
String[] places = {"Home", "School", "Work", "Boo's"};
int STATE = 1;  //1 = School
float[][] movementChance = {
  {.3, .3, .2, .2},
  {.3, .1, .3, .3},
  {.7, 0, .15, .15},
  {.1, .2, .3, .4},
};
for(int hours = 0; hours<24; hours++)
{
  float rand = random(1);
  float current = 0;
  float[] whereToGoPercent = movementChance[STATE];
  for(int i = 0; i<whereToGoPercent.length; i++)
  {
    current += whereToGoPercent[i];
    if(rand < current)
    {
      STATE = i;
      break;
    }
  }
  println(hours+1, places[STATE]);
}
