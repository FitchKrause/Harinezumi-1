/// framework_option_display()
 // The Display settings.
     
 // Change Settings:
    if(option_in_page == false && option_selected == 0)
    {
      option_string_description = "Select the Display Scale. (1 to 3)#This will not affect the display when fullscreen is toggled on.";
    }
     
    if(option_in_page == true && option_change_mode == 0 && option_change_timer == 0)
    {
    
    switch(option_selected_in_page)
    {
           case 0:
           {
               option_string_description = "Select the Display Scale. (1 to 3)#This will not affect the display when fullscreen is toggled on.";
               if((keyboard_check_pressed(vk_right)) || (joy_hat_x(0) == 1 && (GMP.dpad_right == 0)))
               {
                  if(global.display_scale < 3)
                  {
                     global.display_scale += 1;
                  }
                  else
                  {
                     global.display_scale = 1;
                  }
               }
               if(keyboard_check_pressed(vk_left) || (joy_hat_x(0) == -1 && (GMP.dpad_left == 0)))
               {
                  if(global.display_scale > 1)
                  {
                     global.display_scale -= 1;
                  }
                  else
                  {
                     global.display_scale = 3;
                  }
               }                      
               break;
           }
           case 1:
           {
               option_string_description = "Enable or disable Fullscreen.";                 
               if(keyboard_check_pressed(vk_right) || (joy_hat_x(0) == 1 && (GMP.dpad_right == 0)))
               {
                  if(global.display_fullscreen == 0)
                  {
                     global.display_fullscreen = 1;                            
                  }
                  else
                  {
                     global.display_fullscreen = 0;                             
                  }
               }
               if(keyboard_check_pressed(vk_left) || (joy_hat_x(0) == -1 && (GMP.dpad_left == 0)))
               {
                  if(global.display_fullscreen == 1)
                  {
                     global.display_fullscreen = 0;                         
                  }
                  else
                  {
                     global.display_fullscreen = 1;
                  }
               }                      
               break;
           }     
           case 2:
           {
               option_string_description = "Enable or disable VSync.#If you experience slowdown, disable this option.";                   
               if(keyboard_check_pressed(vk_right) || (joy_hat_x(0) == 1 && (GMP.dpad_right == 0)))
               {
                  if(global.display_vsync == 0)
                  {
                     global.display_vsync = 1;                         
                  }
                  else
                  {
                     global.display_vsync = 0;                            
                  }
               }
               if(keyboard_check_pressed(vk_left) || (joy_hat_x(0) == -1 && (GMP.dpad_left == 0)))
               {
                  if(global.display_vsync == 1)
                  {
                     global.display_vsync = 0;                        
                  }
                  else
                  {
                     global.display_vsync = 1;
                  }
               }                      
               break;
           }
           case 3:
           {
               option_string_description = "Enable or disable the HUD in stages.#(Disable for clean screenshots!)";                   
               if(keyboard_check_pressed(vk_right) || (joy_hat_x(0) == 1 && (GMP.dpad_right == 0)))
               {
                  if(global.display_hud == 0)
                  {
                     global.display_hud = 1;                         
                  }
                  else
                  {
                     global.display_hud = 0;                            
                  }
               }
               if(keyboard_check_pressed(vk_left) || (joy_hat_x(0) == -1 && (GMP.dpad_left == 0)))
               {
                  if(global.display_hud == 1)
                  {
                     global.display_hud = 0;                        
                  }
                  else
                  {
                     global.display_hud = 1;
                  }
               }                      
               break;
           }                            
    } 
    
    }

 // Save:
    global.setting_display_scale      = global.display_scale;
    global.setting_display_fullscreen = global.display_fullscreen;
    global.setting_display_vsync      = global.display_vsync;
    global.setting_display_hud        = global.display_hud;

