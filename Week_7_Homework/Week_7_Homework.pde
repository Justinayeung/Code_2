//https://github.com/bennorskov/Parsons-Code-2-2019/blob/master/Week%207/markovWordGen/markovWordGen.pde
//http://learningprocessing.com/examples/chp18/example-18-01-userinput
//http://processingjs.org/reference/keyCode/

PFont f;
String typing = "";
String saved = "";
StringDict words = new StringDict();
String trainingText = "";
int fragLength = 4;

void setup()
{
  size(1000, 1000);
  f = createFont("Arial", 50);
  for(int i = 0; i<trainingText.length() - fragLength+1; i++)
  {
    String frag = trainingText.substring(i, i+fragLength);
    String letters = words.get(frag);
    if(letters == null && i+fragLength < trainingText.length())
    {
      words.set(frag, ""+trainingText.charAt(i+fragLength));
    }
    else if(i+fragLength+1 < trainingText.length())
    {
      letters += trainingText.charAt(i+fragLength);
      words.set(frag, letters);
    }
  }
}

void draw()
{
  background(100);
  int indent = 25;
  textFont(f);
  fill(255);
  text("Input: " + typing, indent, 900);
  text("You: " + saved, indent, 800);
}

void keyPressed()
{
  if(key == '\n')
  {
    saved = typing;
    typing = "";
  }
  else
  {
    typing = typing + key;
  }
  
  if(keyCode == ENTER)
  {
    int numLetters = 50;
    int randomStart = int(random(trainingText.length()-fragLength));
    String toWrite = trainingText.substring(randomStart, randomStart+fragLength);
    for(int i = 0; i<numLetters; i++)
    {
       String frag = toWrite.substring(toWrite.length()-fragLength, toWrite.length());
       String possibleLetters = words.get(frag);
       if(possibleLetters == null) break;
       toWrite += ""+possibleLetters.charAt(int(random(possibleLetters.length())));
    }
    text("" + toWrite, 200, 100);
  }
}
