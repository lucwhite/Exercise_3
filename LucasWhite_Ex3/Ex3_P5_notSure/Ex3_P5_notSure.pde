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
  

  noStroke();
  fill(r, g, b);
  
  ellipse((int)random(800),(int)random(275,800),(int)random(125,175),(int)random(125,175));

  rectMode(CORNER);
  rect(x, 12.5, 25, 50);
  
  ellipse(x,100, 25 ,25);
  
  triangle(x, 150, (x-25), 175, (x+25), 175);

  x = x + 50;

  r = (r + (int)random(-10, 10));
  g = (g + (int)random(-10, 10));
  b = (b + (int)random(-10, 10));


  if (x > width)
  {
    x = 0;
    y=y+50;
  }
  /*
  for(int cy = 175; cy < 601; cy++ )
  {
    for(int cx = 0; cx < 601; cx++)
    {
      ellipse((cx+25),(cy+25),50,50);
    }
    
  }
  */
  
  
  
  if (mousePressed)
  {
    x=0;
    y=0;
    background(255);
  }
  if(r > 255 || r < 0)
  {
    r = 125;
  }
  if(g > 255 || g < 0)
  {
    g = 125;
  }
  if(b > 255 || b < 0)
  {
    b = 125;
  }
  
  
}