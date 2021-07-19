Walker walkers[] = new Walker[10];
int c;
void setup()
{
  camera(0,0,Window.eyeZ,0,0,0,0,-1,0);
  size(1080,720,P3D);
  
  int sWalkers = 2;
  
  for (int i = 0; i < sWalkers; i++) {
    walkers[i] = new Walker();
    c++;
  }
}

PVector checkWall(PVector position){
  float x = position.x, y = position.y;
  if (x > Window.right || x < Window.left){
    x = -1;
  } else {
    x = 1;
  }
  if (y > Window.top || y < Window.bottom){
    y = -1;
  } else {
    y = 1;
  }
  return(new PVector(x,y));
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth;
  float y = -(mouseY - Window.windowHeight);
  return new PVector(x,y);
}

void mouseClicked()
{
  if (c < 10){
    walkers[c] = new Walker();
    walkers[c].position = new PVector(mousePos().x,mousePos().y);
    c++;
  }
}

void draw()
{
  background(250);
  
  for (int i = 0; i < c; i++) {
    PVector wall = checkWall(walkers[i].position);
    walkers[i].moveAndBounce(wall);
    walkers[i].render();
  } 
  
}
