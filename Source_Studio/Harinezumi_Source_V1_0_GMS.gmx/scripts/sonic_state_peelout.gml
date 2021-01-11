/// sonic_state_peelout() 
 // Sonic's drop dash ability.
 
 // Trigger.
    if(state == CS_LOOK)
    {
       if(input_action_pressed && input_up)
       {
          state        = CS_PEELOUT;
          peelout_flag = 0;
          if(peelout_timer > 0) peelout_timer = 0;         
          if(audio_is_playing(_char_peel_charge))
          {
             audio_stop(_char_peel_charge);
          }  
          audio_play(_char_peel_charge, global.sfx_volume);   
       }
    }
    
 // Charge and release: 
    if(state == CS_PEELOUT)
    { 
       if(input_up)
       {
          if(peelout_timer < 32)
          {
             peelout_timer += 1;
          }
       }
       else // Release.
       {
          if(peelout_timer < 32)
          {
             state         = CS_DEFAULT;
             peelout_timer = 0
             if(audio_is_playing(_char_peel_charge))
             {
                audio_stop(_char_peel_charge);
             }     
          }
          else
          {
             state         = CS_DEFAULT;
             x_speed       = animation_direction*12;
             peelout_timer = 0
             peelout_flag  = 1;
             if(audio_is_playing(_char_peel_charge))
             {
                audio_stop(_char_peel_charge);
             }               
             if(audio_is_playing(_char_peel_release))
             {
                audio_stop(_char_peel_release);
             }  
             audio_play(_char_peel_release, global.sfx_volume);  
          }
       }
    }
    
 // Reset Peelout animation flag.
    if(state != CS_DEFAULT || animation_index != "PEELOUT")
    {
       if(peelout_flag == 1)
       {
          peelout_flag = 0;
       }  
    }
