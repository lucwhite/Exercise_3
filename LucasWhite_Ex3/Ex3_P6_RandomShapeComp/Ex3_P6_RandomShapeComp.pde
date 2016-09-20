
void setup()
{
  size(80, 80);
  background(120, 175, 180);
  frameRate(3);
}

void draw()
{
  int randobando = (int(random(100)));
  if (randobando < 20)
  {
    noStroke();
    fill(150,225,175);
    quad(0,80,20,80,20,0,0,0);
  }
  if (20 <= randobando && randobando < 35)
  {
    noStroke();
    fill(170,240,175);
    quad(0,30,70,30,70,0,0,0);
  }
  if (35 <= randobando && randobando < 40)
  {
    noStroke();
    fill(250,200,105);
    quad(30,60,45,60,45,10,45,10);
  }
  if (40 <= randobando && randobando < 50)
  {
    //purple bit
    noStroke();
    fill(150,70,150);
    quad(20,80,80,80,80,60,40,60);
  }
  if (50 <= randobando && randobando < 58)
  {
    //corner squares
    noStroke();
    fill(120, 175, 180);
    quad(40,40,80,40,80,80,40,80);
    quad(0,0,40,0,40,40,0,40);
  }
   if (58 <= randobando && randobando < 65)
  {
    //hole clear
    noStroke();
    fill(120,175,180);
    ellipse(40,40,65,65);
  }
   if (65 <= randobando && randobando < 70)
  {
    //orange bar
    noStroke();
    fill(250,130,100);
    quad(0,20,80,20,80,60,0,60);
  }
  if (75 <= randobando && randobando < 80)
  {
    //hole not clear
    noStroke();
    fill(140,195,200);
    ellipse(40,40,50,50);
  }
}