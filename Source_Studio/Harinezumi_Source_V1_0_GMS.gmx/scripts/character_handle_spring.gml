/// character_handle_spring()
 // Script to handle springs.
 
 // Spring handle:
    var _spring;
        _spring = instance_nearest(x, y, par_spring);
        
 // Trigger spring.
    if(_spring != noone)
    {
       // UP:
       if(_spring.spring_direction == SP_UP)
       { 
          if(angle != 90 && angle != 270)
          {
             if(character_collision_check(COL_BOTTOM_OBJECT, MASK_BIG, x, y, angle, _spring) && y_speed >= 0)
             {
                // Bounce the character.
                   ground  = false;
                   y_speed = -_spring.spring_strength;
                   character_set_angle(0);
                
                // Set State:
                   state = CS_SPRING;  
             
                // Disable shield flag.
                   shield_usable = false;
                
                // Animate.
                   _spring.image_speed = 0.5;
                
                // Sound:            
                   audio_play(_general_spring, global.sfx_volume);               
             }   
          } 
          else
          {
             if(angle == 90)
             {
                if(character_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, angle, _spring) && sign(x_speed) >= 0.0)
                {
                   // Bounce the character.
                      x_speed             = _spring.spring_strength;
                      animation_direction = 1;
                      
                   // Animate.
                      _spring.image_speed = 0.5;     
                
                   // Sound:            
                      audio_play(_general_spring, global.sfx_volume);                          
                }  
             }  
             if(angle == 270)
             {
                if(character_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, angle, _spring) && sign(x_speed) >= 0.0)
                {
                   // Bounce the character.
                      x_speed             = -_spring.spring_strength;
                      animation_direction = -1;

                   // Animate.
                      _spring.image_speed = 0.5;     
                
                   // Sound:            
                      audio_play(_general_spring, global.sfx_volume);                          
                }  
             }                     
          }       
       }
       // DOWN:
       if(_spring.spring_direction == SP_DOWN)
       {
          if(angle != 90 && angle != 270)
          {
             if(character_collision_check(COL_TOP_OBJECT, MASK_BIG, x, y, angle, _spring) && y_speed <= 0)
             {
                // Bounce the character.
                   ground  = false;
                   y_speed = _spring.spring_strength;
                   character_set_angle(0);
                
                // Animate.
                   _spring.image_speed = 0.5;     
                
                // Sound:            
                   audio_play(_general_spring, global.sfx_volume);                          
             }  
          }       
          else
          {
             if(angle == 90)
             {
                if(character_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, angle, _spring) && sign(x_speed) >= 0.0)
                {
                   // Bounce the character.
                      x_speed             = -_spring.spring_strength;
                      animation_direction = -1;
                      
                   // Animate.
                      _spring.image_speed = 0.5;     
                
                   // Sound:            
                      audio_play(_general_spring, global.sfx_volume);                          
                }  
             }  
             if(angle == 270)
             {
                if(character_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, angle, _spring) && sign(x_speed) >= 0.0)
                {
                   // Bounce the character.
                      x_speed             = _spring.spring_strength;
                      animation_direction = 1;

                   // Animate.
                      _spring.image_speed = 0.5;     
                
                   // Sound:            
                      audio_play(_general_spring, global.sfx_volume);                          
                }  
             }                     
          }  
       }      
       // LEFT:
       if(_spring.spring_direction == SP_LEFT)
       {
          if(!character_collision_check(COL_TOP_OBJECT, MASK_BIG, x, y, angle, _spring) && character_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, angle, _spring) && sign(x_speed) >= 0.0)
          ||(state == CS_GLIDE && character_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, angle, _spring))
          {
             // Bounce the character.
                x_speed             = -_spring.spring_strength;
                input_lock_s        = 1;
                lock_timer          = 16;                
                animation_direction = -1;
                character_set_angle(0);
                
             // Revert skid and other misc. state.
                if(state == CS_SKID || state == CS_GLIDE || state == CS_GLIDE_DROP || state == CS_SLIDE || state == CS_FLY || state == CS_FLYDROP)
                { 
                   state = CS_DEFAULT;
                   if(!ground)
                   {
                      animation_index = "RUN";
                   }                   
                }
                
             // Animate.
                _spring.image_speed = 0.5;    
                
             // Sound:            
                audio_play(_general_spring, global.sfx_volume);                      
          }           
       }
       // RIGHT:
       if(_spring.spring_direction == SP_RIGHT)
       {
          if(!character_collision_check(COL_TOP_OBJECT, MASK_BIG, x, y, angle, _spring) && character_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, angle, _spring) && sign(x_speed) <= 0.0)
          ||(state == CS_GLIDE && character_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, angle, _spring))
          { 
             // Bounce the character.
                x_speed             = _spring.spring_strength;
                input_lock_s        = 1;
                lock_timer          = 16;                
                animation_direction = 1;
                character_set_angle(0); 
                
             // Revert skid state.
                if(state == CS_SKID || state == CS_GLIDE || state == CS_GLIDE_DROP || state == CS_SLIDE || state == CS_FLY || state == CS_FLYDROP)
                { 
                   state = CS_DEFAULT;
                   if(!ground)
                   {
                      animation_index = "RUN";
                   }
                }
                                
             // Animate.
                _spring.image_speed = 0.5;  
                
             // Sound:            
                audio_play(_general_spring, global.sfx_volume);                                              
          }           
       }          
    }
 
 // Diagonal Spring handle:
    var _dspring;
        _dspring = instance_nearest(x, y, par_spring_diagonal);
        
 // Trigger spring.
    if(_dspring != noone)
    {
       // UP RIGHT:
       if(_dspring.spring_direction == SP_UP_RIGHT)
       {
          if((character_collision_check(COL_BOTTOM_OBJECT, MASK_LARGE, x, y, angle, _dspring) && y_speed >= 0) or (character_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, angle, _dspring) && x_speed <= 0))
          {
             // Bounce the character.
                ground              = false;
                x_speed             =  _dspring.spring_strength;
                y_speed             = -_dspring.spring_strength;
                animation_direction = 1;                
                character_set_angle(0);

                
             // Set State:
                state = CS_SPRING_DIAGONAL;  
             
             // Disable shield flag.
                shield_usable = false;
                
             // Animate.
                _dspring.image_speed = 0.5;
                
             // Sound:            
                audio_play(_general_spring, global.sfx_volume);               
          }           
       }
       
       // UP LEFT:
       if(_dspring.spring_direction == SP_UP_LEFT)
       {
          if((character_collision_check(COL_BOTTOM_OBJECT, MASK_LARGE, x, y, angle, _dspring) && y_speed >= 0) or (character_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, angle, _dspring) && x_speed <= 0))
          {
             // Bounce the character.
                ground              = false;
                x_speed             = -_dspring.spring_strength;
                y_speed             = -_dspring.spring_strength;
                animation_direction = -1;    
                character_set_angle(0);
                
             // Set State:
                state = CS_SPRING_DIAGONAL;  
             
             // Disable shield flag.
                shield_usable = false;
                
             // Animate.
                _dspring.image_speed = 0.5;
                
             // Sound:            
                audio_play(_general_spring, global.sfx_volume);               
          }           
       }
    }
