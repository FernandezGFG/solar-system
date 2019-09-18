/**
 * Processing
 * Planet.pde
 * Purpose: Planet class for Processing based 
 * solar system simulation.
 *
 * @author Gonzalo G. Fernández
 * @version 1.0 17/09/19
 */

public class Planet {
  
  String id;
  
  float radius;
  
  private float angle;
  private float angle_sun;
  
  private float vel_rot = 0.005;
  private float vel_tras = 0.01;
  
  Planet sun = null;
  Planet[] satellites;
  
  PVector dir;
  PVector axis;
  
  PShape globe;

  
  Planet(String name, float r, PVector d, float s, PVector z, float st, PImage tex){
    /**
     * Planet constructor.
     *
     * @param  float    r: planet's radius.
     * @param  PVector  d: planet's direction to "father" object.
     * @param  float    s: planet's angulat velocity around axis.
     * @param  PVector  z: planet's axis.
     * @param  PImage   tex: planet's texture.
     */
     
    id = name;

    radius = r;
    vel_rot = s;
    vel_tras = st;
    
    dir = d;
    
    noStroke();
    noFill();
    globe = createShape(SPHERE, radius);
    globe.setTexture(tex);
    
    axis = z;
  }
  
  Planet(String name, float r, PVector d, float s, PVector z, float st, PImage tex, int rings){
    /**
     * Planet constructor.
     *
     * @param  float    r: planet's radius.
     * @param  PVector  d: planet's direction to "father" object.
     * @param  float    s: planet's angulat velocity around axis.
     * @param  PVector  z: planet's axis.
     * @param  PImage   tex: planet's texture.
     */
     
    id = name;

    radius = r;
    vel_rot = s;
    vel_tras = st;
    
    dir = d;
    
    globe = createShape(GROUP);
    
    noStroke();
    noFill();
    PShape aux = createShape(SPHERE, radius);
    aux.setTexture(tex);
    globe.addChild(aux);
    stroke(255, 200, 100, 50);
    for (int  i=0; i<rings; i++){
      float a = random(2.2, 2.6);
      float b = random(2.6, 5);
      aux = createShape(ELLIPSE, 0, 0, a*radius, b*radius);
      globe.addChild(aux);
    }
    
    axis = z;
  }
  
  
  void setSattelites(Planet[] sats){
    /**
     * Add satellite to planet object.
     *
     * @param  Planet    sat: Planet's satellite.
     */
     
    satellites = sats;
    
    for (int i=0; i<satellites.length; i++){
      satellites[i].sun = this;
    }
  }

  void rotateGlobe(int sgn){
    angle += sgn * vel_rot;
  }
  
  void rotateGlobe(float delta, int sgn){
    angle += sgn * delta;
  }
  
  void translateGlobe(int sgn){
    angle_sun += sgn * vel_tras;
  }
  
  void show(){
    /**
     * Render the planet and satellites.
     */
     
    pushMatrix();
    
    if (sun != null){
      PVector aux = sun.axis.cross(dir);
      rotate(angle_sun, aux.x, aux.y, aux.z);
      
    }
    
    translate(dir.x, dir.y, dir.z);
    
    rotate(angle, axis.x, axis.y, axis.z);
    
    shape(globe);
    
    if (satellites != null){
      for (int i=0; i<satellites.length; i++){
        satellites[i].show();
      }
    }
    popMatrix();
  }
  
  void orbit(){
    rotateGlobe(1);
    translateGlobe(1);
    // println(id + ":" + angle + "-" + angle_sun);
    if (satellites != null){
      for (int i=0; i<satellites.length; i++){
        satellites[i].orbit();
      }
    }
  }
}
