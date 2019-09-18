import peasy.*;

PeasyCam camera;

void setup(){
  size(600, 600, P3D);
  
  camera = new PeasyCam(this, 500);
  
  sun_setup();
  planet_setup();
}

void draw(){
  if(flag_mode){
    sun_draw();
  } else {
    planet_draw();
  }
}
