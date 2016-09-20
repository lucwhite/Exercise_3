
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
  strokeWeight(1);
  if (first==true)
  {

    fill(r, g, b);
    triangle(x, y, (x-30), (y+60), (x+30), (y+60));
    x = x + 60;

    triangle(x,y,(x+30),(y+60),(x+60),y);
    x =x+60;
    
    triangle(x,y,(x+60),y,(x+30),(y+60));
    x=x+60;
    triangle((x+60),y,(x+120),y,(x+90),(y+60));
    x=x+60;
    
    triangle((x+60),y,(x+120),y,(x+90),(y+60));
    x=x+60;
    
    

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
      
      fill((r + (int)random(-10, 10)),(g + (int)random(-10, 10)),(b + (int)random(-10, 10)));
      triangle(0,0,0,height,width,height);
      fill((r + (int)random(-10, 10)),(g + (int)random(-10, 10)),(b + (int)random(-10, 10)));
      ellipse(150,450,300,300);
      fill((r + (int)random(-10, 10)),(g + (int)random(-10, 10)),(b + (int)random(-10, 10)));
      
      int dx = 0;
      int dy = 0;
      
      while(dx < 601 && dy < 601)
      {
        ellipse(dx,dy,20,20);
        dx += 20;
        dy += 20;
      }
    }
    
  }

  
  }