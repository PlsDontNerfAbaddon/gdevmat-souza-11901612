Walker walker[] = new Walker[100];

void setup()
{
  camera(0,0,Window.eyeZ,0,0,0,0,-1,0);
  size(1080,720,P3D);

  for (int i = 0; i < walker.length; i++){
    walker[i] = new Walker();
  }
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth;
  float y = -(mouseY - Window.windowHeight);
  return new PVector(x,y);
}

PVector checkWall(Walker w)
{
  int x = 1, y = 1;
  if(w.position.x > Window.right || w.position.x < Window.left){
     x = -1;
  }
  if(w.position.y > Window.top || w.position.y < Window.bottom){
    y = -1;
  }
  
  return new PVector(x,y);
}

void draw()
{
  background(200);
  for (int i = 0; i < walker.length; i++){
    walker[i].update(mousePos(),checkWall(walker[i]));
    walker[i].render();
  }
}
