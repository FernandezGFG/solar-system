/**
 * Processing
 * Satellite.pde
 * Purpose: Satellite class for Processing based 
 * solar system simulation.
 *
 * @author Gonzalo G. Fernández
 * @version 1.0 17/09/19
 */

class Satellite extends Planet {
  Satellite(String id, float r, PVector d, float s, PVector z, float st, PImage tex){
    super(id, r, d, s, z, st, tex);
  }

}
