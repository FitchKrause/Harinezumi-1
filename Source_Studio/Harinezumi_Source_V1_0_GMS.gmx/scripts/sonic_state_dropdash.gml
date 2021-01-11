/// sonic_state_dropdash()
 // Sonic's drop dash ability.
 
 // Initialize Drop Dash:
    if(state == CS_JUMP && dropdash_state == 0 && shield_usable == 1 && shield_index <= 1)
    {
       if((global.setting_gameplay_instashield == false && input_action_pressed && input_action) || (global.setting_gameplay_instashield == true && input_special_pressed && input_special))
       {
          dropdash_state     = 1;
          dropdash_timer     = 0;
          dropdash_trg_speed = y_speed;
       }
    }
 
 // Charge the drop dash for 20 frames:
    if(dropdash_state == 1)
    {
       if(dropdash_timer < 20)
       {
          dropdash_timer += 1;
       }
       else // Finalize the drop dash once fully charged.
       {
          dropdash_state = 2;
          audio_stop(_char_drop_dash);
          audio_play(_char_drop_dash, global.sfx_volume);          
       }
    }
    
 // When we land on terrain and the drop dash is fully charged, release it.
    if(dropdash_state == 2 && ground)
    {
       // Reset the drop dash state:
          dropdash_state = 0;
          
       // Switch the state to rolling:
          state = CS_ROLL;
          
       // Set the camera lag to 16, similiar to the spindash:
          if(global.setting_gameplay_camera_lag == true)    
          {         
             ctr_camera.cam_lag = 16;              
          }   
          
       // Play the spindash release sound and stop the drop dash charge sound, in case it's still playing:
          if(audio_is_playing(_char_drop_dash))
          {
             audio_stop(_char_drop_dash);
          }
          audio_play(_char_spindash_release, global.sfx_volume);             
          
       // Create the dust effect:
          with(instance_create(xprevious, y, obj_dropdash_dust))
          {
               image_xscale = other.animation_direction;
          }  
          
       // Check the animation direction, angle and speed to correctly set the release speed.           
          if(animation_direction == 1)
          {
             if(x_speed >= 0)
             {
                x_speed = min(dropdash_max_speed, dropdash_speed + (x_speed / 4));
             }
             else if(angle != 0)
             {
                     x_speed = dropdash_speed + (x_speed/2);
             }
             else
             {
                x_speed = dropdash_speed;
             }          
          }        
          if(animation_direction == -1)
          {
             if(x_speed <= 0)
             {
                x_speed = max(-dropdash_max_speed, -dropdash_speed + (x_speed / 4));
             }
             else if(angle != 0)
             {
                     x_speed = -dropdash_speed + (x_speed/2);
             }
             else
             {
                x_speed = -dropdash_speed;
             }          
          } 
    }
    
 // Cancel drop dash:
 // Do this when we release the action/special button.
    if((dropdash_state != 0 && ((global.setting_gameplay_instashield == false && !input_action) || (global.setting_gameplay_instashield == true && !input_special))) || (state != CS_JUMP && dropdash_state != 0))
    {
       dropdash_state     = 0;
       dropdash_timer     = 0;
       dropdash_trg_speed = 0;
    }

