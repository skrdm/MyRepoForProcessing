float x, y, speedX, speedY;
float r = 10;
float h = 200;

void setup()
{
  fullScreen();
  reset();
}

void draw() 
{ 
  background(255);
  
  fill(0);
  ellipse(x, y, r, r);
  rect(0, 0, 20, height);
  rect(width - 30, mouseY - h / 2, 10, h);

  x += speedX;
  y += speedY;

  if (x > width - 30 && x < width - 20 && y > mouseY - h / 2 && y < mouseY + h / 2)
  {
    speedX = -speedX;
  } 
  if (x < 25) 
  {
    speedX *= -1.2;
    speedY *= 1.2;
    x += speedX;
  }
  if (y > height || y < 0) 
  {
    speedY = -speedY;
  }
}

void reset()
{
  x = width/2;
  y = height/2;
  speedX = random(5, 7);
  speedY = random(5, 7);
}

void mousePressed() {
  reset();
}