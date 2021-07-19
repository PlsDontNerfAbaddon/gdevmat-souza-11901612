class Walker
{
  float x;
  float y;
  
  void render()
  {
    noStroke();
    fill(int(random(256)),int(random(256)),int(random(256)),int(random(51))+50);
    //fill(255,0,0,int(random(51))+50);
    circle(x,y,30);
  }
  
  void randomWalk()
  {
    int rng = int(random(8));
    
    if (rng == 0)
    {
      y+=5;
    }
    else if (rng == 1)
    {
      y-=5;
    }
    else if (rng == 2)
    {
      x+=5;
    }
    else if (rng == 3)
    {
      x-=5;
    }
    else if (rng == 4)
    {
      x+=5;
      y+=5;
    }
    else if (rng == 5)
    {
      x-=5;
      y+=5;
    }
    else if (rng == 6)
    {
      x-=5;
      y-=5;
    }
    else if (rng == 7)
    {
      x+=5;
      y-=5;
    }
  }
  
  void randomWalkBiased()
  {
    int rng = int(random(20));
    
    if (rng == 0)
    {
      y+=5;
    }
    else if (rng == 1 || rng == 2)
    {
      y-=5;
    }
    else if (rng >= 3 && rng <= 5)
    {
      x+=5;
    }
    else if (rng >= 6 && rng <= 9)
    {
      x-=5;
    }
    else if (rng == 10)
    {
      x+=5;
      y+=5;
    }
    else if (rng == 11 || rng == 12)
    {
      x-=5;
      y+=5;
    }
    else if (rng >= 13 && rng <= 15)
    {
      x-=5;
      y-=5;
    }
    else if (rng >= 16 && rng <= 19)
    {
      x+=5;
      y-=5;
    }
  }
}
