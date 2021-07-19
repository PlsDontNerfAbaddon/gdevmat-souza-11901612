float t = 0.0;
float dt = 10;
float amp = 5;
float freq = -3;

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  
}

void draw()
{  
  background(0);



  drawPlane();
  drawQuad();
  drawLinear();
  //drawSine();

}

void drawPlane()
{
  strokeWeight(1);
  color white = color(255,255,255);
  fill(white);
  stroke(white);
  line(-300, 0, 300, 0);
  line(0, -300, 0, 300);
  
  for (int i = -300; i <= 300; i+=10)
  {
    line(i,-2,i,2);
    line(-2,i,2,i);
  }
}

void drawQuad()
{
  color yellow = color(255, 255, 0);
  fill(yellow);
  noStroke();
  for(float x = -300; x <=300; x+=0.1f)
  {
    circle(x, ((float)Math.pow(x,2) - (x*15) - 3), 5);
  }
  
}

void drawLinear()
{
  color purple = color(255,0,255);
  fill(purple);
  noStroke();
  for(float x = -300; x <=300; x+=0.1f)
  {
    circle(x, (x*(-5))+30, 5);
  }
  
}

void drawSine()
{
  color rand = color(100,100,255);
  fill(rand);
  noStroke();
  for(float x = -300; x <=300; x+=0.1f)
  {
    circle(x, (float)((Math.pow(2,amp))*Math.sin((t+x)*Math.pow(2,freq))), 5);
  }
  
  if(keyPressed == true)
  {
    if(keyCode == LEFT)
    {
      freq -= .1;
    }
    else if(keyCode == RIGHT)
    {
      freq += .1;
    }
    
    if(keyCode == UP)
    {
      amp += .1;
    }
    else if(keyCode == DOWN)
    {
      amp -= .1;
    }
    
  }
  
  t += dt;
}
