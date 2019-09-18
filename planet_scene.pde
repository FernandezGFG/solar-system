int index;
Planet[] planets = new Planet[6];

void planet_setup(){
  // Add planets
  planets[0] = earth_setup();
  planets[1] = mercury_setup();
  planets[2] = venus_setup();
  planets[3] = mars_setup();
  planets[4] = jupiter_setup();
  planets[5] = saturn_setup();
  
  for (int i=0; i<planets.length; i++){
    planets[i].dir = new PVector(0, 0, 0);
  }
  
  index = 0;
}


void planet_draw(){
  
  // Arrow keys rotation
  if (flag_arrow != 0){
    planets[index].rotateGlobe(0.01, flag_arrow);
  }
  
  // Normal rotation
  if (flag_rot){
    if (index >= planets.length){
      index = 0;
    } else if (index < 0){
      index = planets.length - 1;
    }
    planets[index].orbit();
  }
  
  background(0);
  lights();
  
  planets[index].show();
}
