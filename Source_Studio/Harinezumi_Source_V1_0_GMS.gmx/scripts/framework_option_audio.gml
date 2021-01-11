/// framework_option_audio()
 // The Audio settings.
 
 // Change Settings:
    if(option_in_page == false && option_selected == 1)
    {
      option_string_description = "Change the Music Volume.";
    }
    
    if(option_in_page == true && option_change_mode == 0 && option_change_timer == 0)
    {
    
    switch(option_selected_in_page)
    {
           case 0:
           {
               option_string_description = "Change the Music Volume.";
               if(keyboard_check_pressed(vk_right) || (joy_hat_x(0) == 1 && (GMP.dpad_right == 0)))
               {
                  if(SFX.backup_bgm_volume < 1.0)
                  {
                    SFX.backup_bgm_volume += 0.01;
                  }
                  else
                  {
                    SFX.backup_bgm_volume = 1.0;
                  }
               }
               if(keyboard_check(vk_right) || (joy_hat_x(0) == 1))
               {
                  if(option_value_timer > 0)
                  {
                     option_value_timer -= 1;
                  }
                  else
                  {
                     if(SFX.backup_bgm_volume < 1.0)
                     {
                       SFX.backup_bgm_volume += 0.01;
                     }
                     else
                     {
                       SFX.backup_bgm_volume = 1.0;
                     }                
                  }
               }                 
               if(keyboard_check_pressed(vk_left) || (joy_hat_x(0) == -1 && (GMP.dpad_left == 0)))
               {
                  if(SFX.backup_bgm_volume > 0.0)
                  {
                    SFX.backup_bgm_volume -= 0.01;
                  }
                  else
                  {
                    SFX.backup_bgm_volume = 0;
                  }
               }      
               if(keyboard_check(vk_left) || (joy_hat_x(0) == -1))
               {
                  if(option_value_timer > 0)
                  {
                     option_value_timer -= 1;
                  }
                  else
                  {
                     if(SFX.backup_bgm_volume > 0.0)
                     {
                        SFX.backup_bgm_volume -= 0.01;
                     }
                     else
                     {
                        SFX.backup_bgm_volume = 0;
                     }                  
                  }
               }  
               if(!keyboard_check(vk_left) && !keyboard_check(vk_right) && (joy_hat_x(0) == 0))
               {
                  option_value_timer = 30;
               }     
               break;
           }
           case 1:
           {
               option_string_description = "Change the Sound Volume.";          
               if(keyboard_check_pressed(vk_right) || (joy_hat_x(0) == 1 && (GMP.dpad_right == 0)))
               {
                  if(global.sfx_volume < 1.0)
                  {
                     global.sfx_volume += 0.01;
                  }
                  else
                  {
                     global.sfx_volume = 1.0;
                  }
               }
               if(keyboard_check(vk_right) || (joy_hat_x(0) == 1))
               {
                  if(option_value_timer > 0)
                  {
                     option_value_timer -= 1;
                  }
                  else
                  {
                     if(global.sfx_volume < 1.0)
                     {
                        global.sfx_volume += 0.01;
                     }
                     else
                     {
                        global.sfx_volume = 1.0;
                     }                
                  }
               }                 
               if(keyboard_check_pressed(vk_left) || (joy_hat_x(0) == -1 && (GMP.dpad_left == 0)))
               {
                  if(global.sfx_volume > 0.0)
                  {
                     global.sfx_volume -= 0.01;
                  }
                  else
                  {
                     global.sfx_volume = 0;
                  }
               }      
               if(keyboard_check(vk_left) || (joy_hat_x(0) == -1))
               {
                  if(option_value_timer > 0)
                  {
                     option_value_timer -= 1;
                  }
                  else
                  {
                     if(global.sfx_volume > 0.0)
                     {
                         global.sfx_volume -= 0.01;
                     }
                     else
                     {
                         global.sfx_volume = 0;
                     }                  
                  }
               }  
               if(!keyboard_check(vk_left) && !keyboard_check(vk_right) && (joy_hat_x(0) == 0))
               {
                  option_value_timer = 30;
               }     
               break; 
           } 
           case 2:
           {
               option_string_description = "Change the Event Volume.";
               if(keyboard_check_pressed(vk_right) || (joy_hat_x(0) == 1 && (GMP.dpad_right == 0)))
               {
                  if(global.ev_volume < 1.0)
                  {
                    global.ev_volume += 0.01;
                  }
                  else
                  {
                    global.ev_volume = 1.0;
                  }
               }
               if(keyboard_check(vk_right) || (joy_hat_x(0) == 1))
               {
                  if(option_value_timer > 0)
                  {
                     option_value_timer -= 1;
                  }
                  else
                  {
                     if(global.ev_volume < 1.0)
                     {
                       global.ev_volume += 0.01;
                     }
                     else
                     {
                       global.ev_volume = 1.0;
                     }                
                  }
               }                 
               if(keyboard_check_pressed(vk_left) || (joy_hat_x(0) == -1 && (GMP.dpad_left == 0)))
               {
                  if(global.ev_volume > 0.0)
                  {
                    global.ev_volume -= 0.01;
                  }
                  else
                  {
                    global.ev_volume = 0;
                  }
               }      
               if(keyboard_check(vk_left) || (joy_hat_x(0) == -1))
               {
                  if(option_value_timer > 0)
                  {
                     option_value_timer -= 1;
                  }
                  else
                  {
                     if(global.ev_volume > 0.0)
                     {
                        global.ev_volume -= 0.01;
                     }
                     else
                     {
                        global.ev_volume = 0;
                     }                  
                  }
               }  
               if(!keyboard_check(vk_left) && !keyboard_check(vk_right) && (joy_hat_x(0) == 0))
               {
                  option_value_timer = 30;
               }     
               break;
           }                                         
    }  
    
    }
    
 // Save:
    SFX.backup_sfx_volume    = global.sfx_volume;
    global.setting_music_vol = SFX.backup_bgm_volume;
    global.setting_sound_vol = global.sfx_volume;
    global.setting_event_vol = global.ev_volume;
