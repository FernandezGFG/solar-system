import peasy.*;

PeasyCam camera;

int zoom;

void setup(){
  size(600, 600, P3D);
  surface.setTitle("Solar System");
  
  zoom = 500;
  camera = new PeasyCam(this, 500);
  
  sun_setup();
  planet_setup();
}

void draw(){
  if(flag_mode){
    camera.setDistance(650);
    sun_draw();
  } else {
    camera.setDistance(180);
    planet_draw();
  }
}
