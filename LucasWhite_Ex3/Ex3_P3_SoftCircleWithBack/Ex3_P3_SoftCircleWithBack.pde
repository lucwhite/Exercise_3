
int x =0;
int y =0;
int r = (int)random(255);
int g = (int)random(255);
int b = (int)random(255);
boolean first = true;
boolean second = false;
boolean third = false;


void setup() {
  size(600, 600);
  background(r, g, b);
  frameRate(8);
}


void draw() {
  //strokeWeight(1);
  noStroke();
  if (first==true)
  {
    noStroke();
    //strokeWeight(1);
    fill(r, g, b);
    triangle(x, y, (x-30), (y+90), (x+30), (y+60));
    x = x + 60;

    quad(x, (y-30), x, (y+30), (x+60), (y+60), (x+60), y);
    x =x+60;

    r = (r + (int)random(-10, 10)); 
    g = (g + (int)random(-10, 10)); 
    b = (b + (int)random(-10, 10)); 

    if (x> width) {
      x =0;
      y= y+60;
    }

    if (y>height) {
      x=0;
      y=0;

      first = false;
      second = true;
    }
  }

  if (second == true)
  {
    strokeWeight(1);
    fill(r, g, b);
    triangle((x+30), y, (x-60), (y+90), (x+60), (y+60));
    x = x + 60;

    quad((x+30), (y-30), (x+30), (y+30), (x+90), (y+60), (x+90), y);
    x =x+60;

    r = (r + (int)random(-10, 10)); 
    g = (g + (int)random(-10, 10)); 
    b = (b + (int)random(-10, 10)); 

    if (x> width) {
      x =0;
      y= y+60;
    }

    if (y>height) {
      x=0;
      y=0;

      second = false;
      third = true;
      fill(255);
      noStroke();
      ellipse(width/2, height/2, 300, 300);
    }

    if (third == true)
    {
    
      fill(r, g, b);
      //triangle((x+60), y, (x-90), (y+90), (x+90), (y+60));
      x = x + 60;

      //quad((x+60), (y-30), (x+60), (y+30), (x+120), (y+60), (x+120), y);
      x =x+60;

      r = (r + (int)random(-10, 10)); 
      g = (g + (int)random(-10, 10)); 
      b = (b + (int)random(-10, 10)); 

      if (x> width) {
        x =0;
        y= y+60;
      }

      if (y>height) {
        x=0;
        y=0;

        third = false;
        first = true;

        fill(255);
        noStroke();
        ellipse(width/2, height/2, 200, 200);
      }
      
    }
  }
  if(mouseX > 200 && mouseX < 400 && mouseY > 200 && mouseY < 400)
      {
        noStroke();
        fill((r+(int)random(-20,20)),(g+(int)random(-20,20)),(b+(int)random(-20,20)));
        ellipse(width/2, height/2, 300, 300);
        strokeWeight(1);
      }
}