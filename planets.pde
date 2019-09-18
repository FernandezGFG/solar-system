Planet earth, mercury, venus, mars, jupiter;

PImage img_earth, img_mercury, img_venus, img_mars, img_jupiter;
float r_earth, r_mercury, r_venus, r_mars, r_jupiter;

// EARTH
Planet earth_setup(){
  // Load Earth texture
  img_earth = loadImage("assets/imgs/earth.png");
  PVector axis_earth = new PVector(0, 1, 0);
  PVector dir_earth = new PVector(170, 0, 0);
  
  r_earth = 0.05*r_sun;
  
  earth = new Planet("Earth", r_earth, dir_earth, 0.005, axis_earth, 0.012, img_earth);
  
  // Add satellite
  moon = moon_setup();
  Planet[] sats = {moon};
  earth.setSattelites(sats);
  
  flag_arrow = 0;
  flag_rot = true;
  
  return earth;
}

// MERCURY
Planet mercury_setup(){
  // Load Earth texture
  img_mercury = loadImage("assets/imgs/mercury.jpg");
  PVector axis_mercury = new PVector(0, 1, 0);
  PVector dir_mercury = new PVector(110, 0, 0);
  
  r_mercury = 0.3829*r_earth;
  
  mercury = new Planet("Mercury", r_mercury, dir_mercury, 0.005, axis_mercury, 0.03, img_mercury);
  
  return mercury;
}

// VENUS
Planet venus_setup(){
  // Load Earth texture
  img_venus = loadImage("assets/imgs/venus.jpg");
  PVector axis_venus = new PVector(0, 1, 0);
  PVector dir_venus = new PVector(150, 0, 0);
  
  r_venus = 0.9499*r_earth;
  
  venus = new Planet("Venus", r_venus, dir_venus, 0.005, axis_venus, 0.02, img_venus);
  
  return venus;
}

// MARS
Planet mars_setup(){
  // Load Earth texture
  img_mars = loadImage("assets/imgs/mars.jpg");
  PVector axis_mars = new PVector(0, 1, 0);
  PVector dir_mars = new PVector(190, 0, 0);
  
  r_mars = 0.533*r_earth;
  
  mars = new Planet("Mars", r_mars, dir_mars, 0.005, axis_mars, 0.01, img_mars);
  
  // Add satellite
  phobos = phobos_setup();
  deimos = deimos_setup();
  Planet[] sats = {phobos, deimos};
  mars.setSattelites(sats);
  
  return mars;
}

// JUPITER
Planet jupiter_setup(){
  // Load Earth texture
  img_jupiter = loadImage("assets/imgs/jupiter.jpg");
  PVector axis_jupiter = new PVector(0, 1, 0);
  PVector dir_jupiter = new PVector(290, 0, 0);
  
  r_jupiter = 11.209*r_earth;
  
  jupiter = new Planet("Jupiter", r_jupiter, dir_jupiter, 0.005, axis_jupiter, 0.007, img_jupiter);
  
  // Add satellite
  io = io_setup();
  europa = europa_setup();
  Planet[] sats = {io, europa};
  jupiter.setSattelites(sats);
  
  return jupiter;
}
