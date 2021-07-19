int i = 0;

void setup()
{
  size(1020,720,P3D);
  camera(0,0,-(height/2.0)/tan(PI*30.0/180.0),0,0,0,0,-1,0);
  background(255);
  
}

void draw()
{
  //for (int i = 0; i < 300; i++){
    
  float gaussian = randomGaussian();
  float randy = random(height)-height/2;
  int r = int(random(256));
  int g = int(random(256));
  int b = int(random(256));
  int alf = int(random(91))+10;
  
  float standardDeviation = 200;
  float mean = 0;
  
  float x = standardDeviation * gaussian + mean;
  
  float tg = randomGaussian();
  float tsd = 15;
  float tm = 20;
  
  float tf = tsd * tg + tm;
  
  
  noStroke();
  fill(r,g,b,alf);
  circle(x,randy,tf);
  
  if(i >= 300){
    background(255);
    i=0;
  }
  i++; 
  
}
