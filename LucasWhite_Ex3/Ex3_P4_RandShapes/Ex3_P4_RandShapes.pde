int x = 0;
int y = 0;
int chooser;
int r = 125;
int g = 125;
int b = 125;

void setup()
{
  size(800, 800);
  background(255);
}

void draw()
{
  chooser = (int)random(3);
  noStroke();
  fill(r, g, b);
  if (chooser == 0) 
  {
    rectMode(CORNER);
    rect(x, y, 50, 50);
  }
  if (chooser == 1) 
  {
    triangle((x+25),y,x,(y+50),(x+50),(y+50));
  }
  if(chooser == 2)
  {
    ellipse((x+25),(y+25),25,25);
  }

  x = x + 50;

  r = (r + (int)random(-10, 10));
  g = (g + (int)random(-10, 10));
  b = (b + (int)random(-10, 10));


  if (x > width)
  {
    x = 0;
    y=y+50;
  }
  if(mousePressed)
  {
    x=0;
    y=0;
    background(255);
  }
}