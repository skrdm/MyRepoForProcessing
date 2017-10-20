int x,y,r,q,s,t;
float alfa, vita, gama, thelta;

void setup()
{
size(600,600); 
r=200;
q=150;
s=100;
t=50;
}

void draw()
{
  int a=color(255,0,0);
  int b=color(0,255,0);
  int c=color(0,0,255);
  int d=color(0,0,0);
  int w=color(255,32);
  background(w);

  alfa=alfa+2;
  x=mouseX+round(r*cos(PI*alfa/180));
  y=mouseY+round(r*sin(PI*alfa/180));
  fill(a);
  ellipse(x,y,10,10);
  
  vita=vita+4;
  x=mouseX+round(q*cos(PI*alfa/180));
  y=mouseY+round(q*sin(PI*alfa/180));
  fill(b);
  rect(x-5,y-5,10,10);

  gama=gama+6;
  x=mouseX+round(s*cos(PI*alfa/180));
  y=mouseY+round(s*sin(PI*alfa/180));
  fill(c);
  ellipse(x,y,10,10);
  
  thelta=thelta+8;
  x=mouseX+round(t*cos(PI*alfa/180));
  y=mouseY+round(t*sin(PI*alfa/180));
  fill(d);
  rect(x-5,y-5,10,10);
   
  fill(w);
  ellipse(mouseX,mouseY,10,10);
  ellipse(mouseX,mouseY,2*t,2*t);
  ellipse(mouseX,mouseY,2*s,2*s);
  ellipse(mouseX,mouseY,2*q,2*q);
  ellipse(mouseX,mouseY,2*r,2*r);
  
}