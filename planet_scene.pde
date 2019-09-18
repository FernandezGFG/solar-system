PImage img_background;
int index;
Planet[] planets = new Planet[6];

void planet_setup(){
  img_background = loadImage("assets/imgs/background.jpg");
  img_background.resize(width, height);
  
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
  
  if (index >= planets.length){
    index = 0;
  } else if (index < 0){
    index = planets.length - 1;
  }
  
  // Arrow keys rotation
  if (flag_arrow != 0){
    planets[index].rotateGlobe(0.01, flag_arrow);
  }
  
  // Normal rotation
  if (flag_rot){
    planets[index].orbit();
  }
  
  background(img_background);
  lights();
  
  planets[index].show();
}
