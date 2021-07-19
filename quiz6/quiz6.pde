Blade blade1 = new Blade();

void setup()
{
  camera(0,0,Window.eyeZ,0,0,0,0,-1,0);
  size(1080,720,P3D);
  
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth;
  float y = -(mouseY - Window.windowHeight);
  return new PVector(x,y);
}

void mouseClicked() {
  blade1.woosh();
}

void draw()
{
  background(130);
  strokeWeight(5);
  stroke(255,0,0);
  
  
  
  PVector mouse = mousePos().normalize();
  
  
  mouse.mult(300);
  blade1.position.set(mouse);
  blade1.render();
  
  text(blade1.mPos + " " + blade1.bState,mousePos().x,mousePos().y);
}
