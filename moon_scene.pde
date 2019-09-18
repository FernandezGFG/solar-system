Planet moon;

PImage img_moon;

Planet moon_setup(){
  img_moon = loadImage("assets/imgs/moon.jpg");
  
  float r_moon = 0.2725*r_earth;
  PVector axis_moon = new PVector(0, 1, 0);
  PVector dir_moon = new PVector(1, 1, 0);
  dir_moon.mult(10);
    
  moon = new Satellite("Moon", r_moon, dir_moon, 0.005, axis_moon, 0.007, img_moon);
  
  return moon;
}
