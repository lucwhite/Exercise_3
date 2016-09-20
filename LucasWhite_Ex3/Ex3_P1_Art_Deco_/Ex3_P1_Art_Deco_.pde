
int x =0;
int y =0;
int r =0;
int g =0;
int b =0;


void setup(){
  size(600, 600);
  frameRate(8);
  
  
  
  
}


void draw(){
  
  strokeWeight(1.5);
  fill(r,g,b);
  quad(x,y,x,(y+90),(x+90),(y+60),(x+90),(y-90));
  x = x + 60;
  
  quad(x,(y-30),x,(y+30),(x+60),(y+60),(x+60),y);
  x =x+60;
  
  r = int (random(250)); 
  g = (r + (int)random(-20,20)); 
  b = (r + (int)random(-50,50)); 
  
 if (x> width){
   x =0;
   y= y+60;
   
   
 }
  
  if(y>height){
    x=0;
    y=0;
  

  }
  

}