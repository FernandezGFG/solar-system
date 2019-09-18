import peasy.*;

PeasyCam camera;

void setup(){
  size(600, 600, P3D);
  
  camera = new PeasyCam(this, 500);
  
  sun_setup();
}

void draw(){
  sun_draw();
}
