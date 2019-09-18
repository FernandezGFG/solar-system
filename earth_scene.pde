void earth_draw(){
  
  earth.dir = new PVector(0, 0, 0);
  
  // Arrow keys rotation
  if (flag_arrow != 0){
    earth.rotateGlobe(0.01, flag_arrow);
  }
  
  // Normal rotation
  if (flag_rot){
    earth.orbit();
  }
  
  background(0);
  lights();
  
  earth.show();
}
