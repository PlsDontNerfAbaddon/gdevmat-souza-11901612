public class Walker
{
  public PVector position = new PVector(random(-540,540),random(-360,360));
  public PVector velocity = new PVector(2,4);
  public PVector acceleration = new PVector();
  
  public int scale = int(random(10,18));
  
  public void getDir(PVector mPos){
     PVector dir = PVector.sub(mPos,position).normalize().mult(0.2);
     acceleration.set(dir);
  }
  
  public void rPos(PVector vChange){
    position = new PVector(position.x*vChange.x, position.y*vChange.y);
  }
  
  public void move(){
    velocity.add(acceleration).limit(10);
    position.add(velocity);
  }
  
  public void fig(){
    //noStroke();
    fill(130,130,130);
    circle(position.x,position.y,scale);
  }
  
  public void update(PVector mPos,PVector vChange){
    getDir(mPos);
    //rPos(vChange);
    
  }
  
  public void render(){
    move();
    fig();
  }
  
}
