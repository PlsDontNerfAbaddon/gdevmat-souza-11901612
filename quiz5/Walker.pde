public class Walker
{
  public PVector position = new PVector(random(-540,540), random(-360,360));
  public float scale = int(random(15,40));
  
  public PVector velocity = new PVector(int(random(-10,10)),int(random(-10,10)));
  
  public int r = int(random(0,255)),g = int(random(0,255)),b = int(random(0,255));
   
  public void move(){
    position.add(velocity);
  }
 
  public void moveAndBounce(PVector dir){
    velocity = new PVector(velocity.x*dir.x,velocity.y*dir.y);
  }
   
  public void render()
  {
    move();
    
    noStroke();
    fill(r,g,b,240);
    circle(position.x,position.y,scale); 
  }
}
