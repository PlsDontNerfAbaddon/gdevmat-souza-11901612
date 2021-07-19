public class Blade
{
  public PVector position = new PVector();

  
  public int bState = 1;
  public float mPos = 1;
  
  public void woosh(){
    bState *= -1;
  }
  
  public void render()
  {
    if (bState == -1 && mPos > 0.15) {
      mPos -= 0.05;
    } else if (bState == 1 && mPos < 1) {
      mPos += 0.085;
    }
    
    strokeWeight(10);
    stroke(255,0,0,200);
    line(position.x*0.15,position.y*0.15,position.x*mPos, position.y*mPos);
    
    strokeWeight(10);
    stroke(255,0,0,200);
    line(-position.x*0.15,-position.y*0.15,-position.x*mPos, -position.y*mPos);
    
    strokeWeight(5);
    stroke(255,250,255,230);
    line(position.x*0.15,position.y*0.15,position.x*mPos, position.y*mPos);
    
    strokeWeight(5);
    stroke(255,250,255,230);
    line(-position.x*0.15,-position.y*0.15,-position.x*mPos, -position.y*mPos);
    
    strokeWeight(8);
    stroke(0,0,0);
    line(-position.x*0.15,-position.y*0.15,position.x*0.15, position.y*0.15);
  }
}
