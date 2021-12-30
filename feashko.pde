// feashko production
import java.util.*;
float angle = 0.0, moon_motion = 0.0;
int screen_width = 1000 ; 
int screen_height = 600;
int half_screen = screen_width/2 ; 
int ground_height = 100;
int background_counter = 1;
boolean background_f = true;
int change_backgrond_sec = 30 ;

//Mode activeMode;
//Tutorial tutorial;


final String robot  = "robot";
final String ninja  = "ninja";
final String zombie = "zombie";
final String coin = "coin";
final String fireb  = "fireb";
final String knifeb = "knifeb";
final String coinb  = "coinb";
final String waterg  = "waterg";
final String spikeg  = "spikeg";
final String movableg = "movableg";






// values of keyboard keys 
boolean isShiftPressed = false ,
        isUPPressed = false ,
        isRIGHTPressed = false ,
        isLEFTPressed = false ,
        isDOWNPressed = false ;
        

void setup(){
  size(1000,600);
  smooth();
  
  PImage[] ground_tiles = new PImage[21];

  PImage robot_img = loadImage("robot/Idle__000.png");
  PImage ninja_img = loadImage("ninja/Idle__000.png");
  PImage zombie_img = loadImage("zombie/Idle__000.png");
  PImage coin_img = loadImage("coin.png");
  PImage special_box_img = loadImage("box_light.png");
  PImage coin_box_img = loadImage("IceBox.png");
  PImage waterg_img = ground_tiles[17];
  PImage spikeg_img = ground_tiles[18];
  PImage movableg_big_img = ground_tiles[19];
  PImage movableg_small_img = ground_tiles[20];
  
  //ground tiles 
  for(int i=1; i<21; i++) {
  String s = String.format("data/bg/Tiles/%d.png", i);
  ground_tiles[i] = loadImage(s);
}

  
}

void draw(){
  //drawBackGround();
  //drawShapes();
  
   
  
} 




int y(int y ){
    return (screen_height - ground_height) - y ;
  }

 
void keyPressed(){
  if (keyCode == SHIFT ) isShiftPressed = true;
  if (keyCode == UP ) isUPPressed = true;
  if (keyCode == RIGHT ) isRIGHTPressed = true;
  if (keyCode == LEFT ) isLEFTPressed = true;
  if (keyCode == DOWN ) isDOWNPressed = true;


}
void keyReleased(){
  if (keyCode == SHIFT ) isShiftPressed = false;
  if (keyCode == UP ) isUPPressed = false;
  if (keyCode == RIGHT ) isRIGHTPressed = false;
  if (keyCode == LEFT ) isLEFTPressed = false;
  if (keyCode == DOWN ) isDOWNPressed = false;

}


//void move_ninja()
//{
//    boolean touch_ground = ninja.is_touch_ground() ; 
//    int obj_intersection =  ninja.is_intersect(shapes)  ; 
//    touch_ground = (touch_ground || (obj_intersection == 1) )? true : false ;

//    if (isUPPressed) 
//    {
//        if(touch_ground)
//        {
//            ninja.set_jump_status(ninja_jump_step) ;
//            ninja.change_photo(ninja_jump,50,50) ;
//            ninja.jump_up() ;
//        }
//    }
//    // if (keyCode == RIGHT )
//    if (isRIGHTPressed)
//    {
//        if(obj_intersection != 3)
//            ninja.walk_right(ninja_left) ;
//    }
//    // if (keyCode == DOWN) 
//    if (isDOWNPressed) 
//    {
//        if(!touch_ground)
//        {
//            ninja.drop_down() ;
//        }
//    }
//    if (isLEFTPressed)
//    {
//        if (ninja.get_x() > half_screen-screen_width/2 )
//            if(obj_intersection != 4)
//                ninja.walk_left(ninja_right) ;
//    }
//    // for fire ball 
//    if(isShiftPressed)
//    {
//        if(ninja.get_last_time_fire()+time_between_fireball < millis() )
//        {
//            ninja_fire.add(new FireBall(1 , ninja.get_x() , ninja.get_y() , 
//                        fire_ball , ninja.get_dir())) ;
//            ninja.set_last_time_fire(millis()) ;
//        }
//    }
//}