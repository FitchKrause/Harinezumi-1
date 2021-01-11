/// character_handle_monitor()
 // Script to handle monitors.
 
 // Monitor handle:
    var _monitor;
        _monitor = instance_nearest(x, y, par_monitor);
        
 // Destroy from the top.
    if(_monitor != noone)
    {
       if(character_collision_check(COL_BOTTOM_OBJECT, MASK_BIG, x, y, angle, _monitor) && y_speed >= 0)
       {
          if(state = CS_JUMP && !ground || state = CS_ROLL && !ground || animation_index = "ROLL" && !ground || shield_state == 1)
          {
             // Destroy monitor:
                _monitor.parent = id;             
                with(_monitor)
                {
                     instance_destroy()
                }
                
             // Rebound:
                y_speed        *= -1;
                ground          = false;
                if(roll_rebounce == false)
                {
                   jump_completed  = false;
                }
                   
             // Reset bubble shield:
                if(shield_index == SHIELD_BUBBLE && shield_state > 0)
                {
                   shield_state  = 0;
                   shield_usable = true;
                   shield_object . shield_sprite = spr_shield_bubble;
                }
          }
       }
    }
    
 // Destroy from the side.
    if(_monitor != noone)
    {
       if(character_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, angle, _monitor) || character_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, angle, _monitor))
       {
          if(state == CS_ROLL || shield_state == 1 || state == CS_GLIDE || state == CS_SLIDE)
          {
             // Destroy monitor:
                _monitor.parent = id;                        
                with(_monitor)
                {           
                     instance_destroy();
                }
          }
       }
    }
    
 // Allow monitor to bounce on our head.
    var monitor;
    monitor = instance_nearest(x, y, par_monitor);
    if(monitor != noone && state != CS_CLIMB && (y_speed == 0 && (state != CS_JUMP || state != CS_ROLL || animation_index != "ROLL")))
    {
       if(state != CS_CROUCH && state != CS_SPINDASH || state != CS_CLIMB)
       {
          if(character_collision_check(COL_TOP_OBJECT, MASK_MAIN, x, y, angle, monitor))
          {
             monitor.is_bumped  = true;
             monitor.y_speed    = -2;
             angle              = 0;               
          }
       }
       else if(character_collision_check(COL_TOP_OBJECT, MASK_BIG, x, y+10, angle, monitor))
       {
               if(state == CS_SPINDASH)
               {
                 // Destroy monitor:
                    monitor.parent = id;
                    with(monitor)
                    {
                        instance_destroy();
                    }                
               }
               else
               {
                  monitor.is_bumped  = true;
                  monitor.y_speed     = -2;
                  angle             = 0;  
               }         
       }
    }
