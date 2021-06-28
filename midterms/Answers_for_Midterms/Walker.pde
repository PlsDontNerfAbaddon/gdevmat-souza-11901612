public class Walker
{
  //lmao lifted
  public PVector dir = new PVector(0,0);
  public PVector position;
  public float s = 10;
  
  public float r = int(random(256));
  public float g = int(random(256));
  public float b = int(random(256));
  public float alf = int(random(91))+100;
  
  public float tg = randomGaussian();
  public float tsd = 15;
  public float tm = 20;
  
  public float tf = tsd * tg + tm;
  
  PVector moveToHole(PVector hpos)
  {
   PVector goTo = PVector.sub(hpos, this.position);
   PVector speed = PVector.mult(goTo.normalize(),5);
   return(speed);
  }
  
  boolean checkHole(PVector hpos)
  {
    if(PVector.sub(hpos,this.position).mag() < 10){
      return(true);
    }
    return(false);
  }
  
  void render()
  {
    noStroke();
    fill(r,g,b,alf);
    circle(position.x,position.y,tf);
  }
  

}
