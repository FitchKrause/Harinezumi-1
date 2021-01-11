/// character_state_jump();
 // The character jumping state.

 // Change to a variable jump:
    if(input_action == false && y_speed < jump_release)
    {
       if(state == CS_JUMP && jump_completed == false)
       {
          y_speed = jump_release;
       }
    }
    
 // Trigger a jump:
    if(ground == true && !character_collision_check(COL_TOP_OBJECT, MASK_BIG, x, y-6, angle, par_solid))
    {
       if(input_action_pressed == true)
       {
          if(state != CS_CROUCH && state != CS_SPINDASH && state != CS_PEELOUT && tunnel_lock == 0)
          {

             // Prevent the character from gaining any horizontal speed on bridges.
                if(instance_place(x, y, par_bridge) || instance_place(x, y, obj_bridge_node))
                {
                   character_set_angle(0);
                }
                
             // Set Horizontal and vertical speed, depending on the jump strength and angle of the character.
                x_speed =  (dcos(angle_relative)*g_speed)-(dsin(angle_relative)*-jump_strength);
                y_speed = -(dsin(angle_relative)*g_speed)-(dcos(angle_relative)*-jump_strength);
                
             // Lock the horizontal input when we were previously rolling.
                if(state == CS_ROLL && global.setting_gameplay_aerial_lock == true)
                {
                   jump_lock = true;
                }
 
             // Change flags:
                ground        = false;
                state         = CS_JUMP;
                shield_usable = true;
                character_set_angle(0);
                
             // Play sound effect:            
                if(audio_is_playing(_char_jump) == 1)
                {
                   audio_stop(_char_jump); 
                }   
                audio_play(_char_jump, global.sfx_volume);    

               
             // Change how fast the animation renders.
                animation_rendering_speed = (1.45/max(5-abs(x_speed), 1));
          }
       }
    }
        
 // Complete jump state:
    if(y_speed > 0.0)
    {
       if(jump_completed == false)
       {
          jump_completed = true;
       }
    }
    
 // Revert spring state.
    if((state == CS_SPRING || state == CS_SPRING_DIAGONAL) && y_speed >= 0)
    {
       state           = CS_DEFAULT;
       animation_index = "WALK";
    }
    
 // Disable flags we previously changed after landing.
    if(ground)
    {
       jump_completed    = false;
       jump_lock         = false;
       shield_usable     = false;
       roll_rebounce     = false;
       global.cscore_mtp = 0
    }

