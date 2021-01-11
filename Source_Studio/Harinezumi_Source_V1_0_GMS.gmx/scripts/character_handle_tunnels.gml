/// character_handle_tunnels()
 // Used to go through tunnels.
 
    // Set state and speed.
       if(ground && tunnel_lock = 1)
       {
          if(x_speed != 0)
          {
             state = CS_ROLL;
          }
          else
          {
             state   = CS_ROLL;          
             x_speed = 4; 
          }
       }
       
    // Trigger the Tunnel Lock:
       if(character_collision_check(COL_MAIN_OBJECT, x, y, obj_tunnel_sensor_right) && x_speed >= 0.0)
       {
          if(tunnel_lock == 0)
          {
             tunnel_lock = 1;
             if(state != CS_ROLL)
             {
                state  = CS_ROLL;
                if(audio_is_playing(_char_roll))
                {
                   audio_stop(_char_roll);
                }  
                audio_play(_char_roll, global.sfx_volume);  
             }
             if(x_speed == 0) { x_speed = 4 }
          }
       }
       else
       if(character_collision_check(COL_MAIN_OBJECT, x, y, obj_tunnel_sensor_left) && x_speed <= 0.0)
       {
          if(tunnel_lock == 0)
          {
             tunnel_lock = 1;
             if(state != CS_ROLL)
             {
                state  = CS_ROLL;
                if(audio_is_playing(_char_roll))
                {
                   audio_stop(_char_roll);
                }  
                audio_play(_char_roll, global.sfx_volume);  
             }
             if(x_speed == 0) { x_speed = -4 }
          }
       }         

       
    // Disable the Tunnel Lock:
       if(tunnel_lock = 1)
       {
          if(character_collision_check(COL_MAIN_OBJECT, x, y, obj_tunnel_sensor_force_stop))
          {
             tunnel_lock = 0;
             state       = CS_ROLL;
          }
       
          if(character_collision_check(COL_MAIN_OBJECT, x, y, obj_tunnel_sensor_right) && x_speed < 0.0)
          {
             tunnel_lock = 0;
             state     = CS_ROLL;
          }
          else
          if(character_collision_check(COL_MAIN_OBJECT, x, y, obj_tunnel_sensor_left) && x_speed > 0.0)
          {
             tunnel_lock = 0;
             state     = CS_ROLL;
          }          
       }
