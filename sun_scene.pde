/**
 * Processing
 * sun_scene.pde
 * Purpose: Show solar system.
 *
 * @author Gonzalo G. Fernández
 * @version 1.0 17/09/19
 */

Planet sun;

PImage img_sun;
float r_sun = 80;

int flag_arrow;
boolean flag_rot;

void sun_setup(){
  // Load Earth texture
  img_sun = loadImage("assets/imgs/sun.jpg");
  PVector axis_sun = new PVector(0, 1, 0);
  PVector dir_sun = new PVector(0, 0, 0);
  
  sun = new Planet("Sun", r_sun, dir_sun, 0.003, axis_sun, 0, img_sun);
  
  // Add planets
  earth = earth_setup();
  mercury = mercury_setup();
  venus = venus_setup();
  mars = mars_setup();
  jupiter = jupiter_setup();
  saturn = saturn_setup();
  Planet[] sats = {earth, mercury, venus, mars, jupiter, saturn};
  sun.setSattelites(sats);
  
  flag_arrow = 0;
  flag_rot = true;
}

void sun_draw(){
  // Arrow keys rotation
  if (flag_arrow != 0){
    sun.rotateGlobe(0.01, flag_arrow);
  }
  
  // Normal rotation
  if (flag_rot){
    sun.orbit();
  }
  
  float z_index = r_sun + 130;
  pointLight(255, 255, 255, -z_index, 0, 0);
  pointLight(255, 255, 255, z_index, 0, 0);
  pointLight(255, 255, 255, 0, -z_index, 0);
  pointLight(255, 255, 255, 0, z_index, 0);
  pointLight(255, 255, 255, 0, 0, -z_index);
  pointLight(255, 255, 255, 0, 0, z_index);
  
  background(img_background);
  
  sun.show();
}
