public class Hole
{
  public PVector position;
  public float s = 10;
  
  public float r = 255;
  public float g = 255;
  public float b = 255;
  
  public float tf = 75;
  
  void render()
  {
    noStroke();
    fill(r,g,b,240);
    circle(position.x,position.y,tf);
  }

}
