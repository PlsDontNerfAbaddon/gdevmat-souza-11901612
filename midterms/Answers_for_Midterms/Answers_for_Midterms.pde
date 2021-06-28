Walker[] walker = new Walker[300];
Hole hole = new Hole();

//plug into object for position
float[] sPos(){
  float[] position = {0,0};
  float gaussian = randomGaussian();
  position[1] = random(height)-height/2;
  
  float standardDeviation = 200;
  float mean = 0;
  
  position[0] = standardDeviation * gaussian + mean;
  
  return(position);
}

//call this to set new positions. call in setup to give sPos
void play(){
  hole.position = new PVector(sPos()[0],sPos()[1]);
  
  for(int i = 0; i < walker.length; i++){
    walker[i].position = new PVector(sPos()[0], sPos()[1]);
    
  }
}


void setup()
{
  size(1020,720,P3D);
  camera(0,0,-(height/2.0)/tan(PI*30.0/180.0),0,0,0,0,-1,0);
  
  //dont move to draw. only do this once pls
  for(int i = 0; i < walker.length; i++){  
    walker[i] = new Walker(); 
  }
  
  play();
}


void draw()
{
  background(0);
  //counts stopped objects. need for reset.
  int check = 0;

  for(int i = 0; i < walker.length; i++){
    
    walker[i].dir = walker[i].moveToHole(hole.position);
    
    //keep in loop need to check each walker.
    if(walker[i].checkHole(hole.position) == true){
      check++;
    }
    
    walker[i].position = PVector.add(walker[i].position,walker[i].dir);
    walker[i].render();  
  }
  
  //dont put in for loop. only need to check once.
  if(check == walker.length){
    play();
  }
  
  hole.render();
  fill(0,0,0);
  //print(walker[0].checkHole(hole.position));
}
