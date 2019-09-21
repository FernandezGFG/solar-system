/**
 * Processing
 * satellites.pde
 * Purpose: All satellites data
 *
 * @author Gonzalo G. Fernández
 * @version 1.0 17/09/19
 */

Planet moon, phobos, deimos, io, europa, ganymede, callisto, titan;

PImage img_moon, img_phobos, img_deimos, img_io, img_europa, img_ganymede, img_callisto, img_titan;

float r_moon;

Planet moon_setup(){
  img_moon = loadImage("assets/imgs/moon.jpg");
  
  r_moon = 0.2725*r_earth;
  PVector axis_moon = new PVector(0, 1, 0);
  PVector dir_moon = new PVector(1, 1, 0);
  dir_moon.mult(10);
    
  moon = new Satellite("Moon", r_moon, dir_moon, 0.005, axis_moon, 0.007, img_moon);
  
  return moon;
}

Planet phobos_setup(){
  img_phobos = loadImage("assets/imgs/phobos.jpg");
  
  float r_phobos = 0.2*r_mars;
  PVector axis_phobos = new PVector(0, 1, 0);
  PVector dir_phobos = new PVector(1, 1, 0);
  dir_phobos.mult(5);
    
  phobos = new Satellite("Phobos", r_phobos, dir_phobos, 0.005, axis_phobos, 0.007, img_phobos);
  
  return phobos;
}

Planet deimos_setup(){
  img_deimos = loadImage("assets/imgs/deimos.jpg");
  
  float r_deimos = 0.2*r_mars;
  PVector axis_deimos = new PVector(0, 1, 0);
  PVector dir_deimos = new PVector(1, 0, 1);
  dir_deimos.mult(4);
    
  deimos = new Satellite("Phobos", r_deimos, dir_deimos, 0.005, axis_deimos, 0.005, img_deimos);
  
  return deimos;
}

Planet io_setup(){
  img_io = loadImage("assets/imgs/io.jpg");
  
  float r_io = 0.03*r_jupiter;
  PVector axis_io = new PVector(0, 1, 0);
  PVector dir_io = new PVector(1, 0, 1);
  dir_io.mult(r_jupiter+5);
    
  io = new Satellite("Io", r_io, dir_io, 0.005, axis_io, 0.005, img_io);
  
  return io;
}

Planet europa_setup(){
  img_europa = loadImage("assets/imgs/europa.jpg");
  
  float r_europa = 0.025*r_jupiter;
  PVector axis_europa = new PVector(0, 1, 0);
  PVector dir_europa = new PVector(0, 1, 1);
  dir_europa.mult(r_jupiter+5);
    
  europa = new Satellite("Europa", r_europa, dir_europa, 0.005, axis_europa, 0.006, img_europa);
  
  return europa;
}

Planet ganymede_setup(){
  img_ganymede = loadImage("assets/imgs/ganymede.jpg");
  
  float r_ganymede = 0.02*r_jupiter;
  PVector axis_ganymede = new PVector(0, 1, 0);
  PVector dir_ganymede = new PVector(1, 1, 0);
  dir_ganymede.mult(r_jupiter+5);
    
  ganymede = new Satellite("Ganymede", r_ganymede, dir_ganymede, 0.005, axis_ganymede, 0.007, img_ganymede);
  
  return ganymede;
}

Planet callisto_setup(){
  img_callisto = loadImage("assets/imgs/callisto.jpg");
  
  float r_callisto = 0.015*r_jupiter;
  PVector axis_callisto = new PVector(0, 1, 0);
  PVector dir_callisto = new PVector(0, 1, 1);
  dir_callisto.mult(r_jupiter+5);
    
  callisto = new Satellite("Callisto", r_callisto, dir_callisto, 0.005, axis_callisto, 0.008, img_callisto);
  
  return callisto;
}

Planet titan_setup(){
  img_titan = loadImage("assets/imgs/titan.jpg");
  
  float r_titan = 1.48*r_moon;
  PVector axis_titan = new PVector(0, 1, 0);
  PVector dir_titan = new PVector(0, 1, 1);
  dir_titan.mult(r_saturn+5);
    
  titan = new Satellite("Titan", r_titan, dir_titan, 0.005, axis_titan, 0.008, img_titan);
  
  return titan;
}
