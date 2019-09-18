/**
 * Processing
 * controls.pde
 * Purpose: Controls for the different scenes
 *
 * @author Gonzalo G. Fernández
 * @version 1.0 17/09/19
 */

void keyPressed(){
  // Arrow keys
  if (keyCode == RIGHT){
    flag_arrow = 1;
  }
  if (keyCode == LEFT){
    flag_arrow = -1;
  }
  
  // Other commands
  if (key == 'D'){
    flag_rot = false;
  }
  if (key == 'R'){
    flag_rot = true;
  }
  
}

void keyReleased(){
  if (keyCode == RIGHT){
    flag_arrow = 0;
  }
  if (keyCode == LEFT){
    flag_arrow = 0;
  }
}
