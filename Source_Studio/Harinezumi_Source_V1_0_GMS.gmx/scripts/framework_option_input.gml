/// framework_option_input()
 // The input settings.
     
 // Description:
    option_string_description = "Change your Input settings.#To reset to the default values, Hold R then press I."; 
        
 // Reset:
    if(keyboard_check(ord("R")) && keyboard_check_pressed(ord("I")) && option_change_mode == 0 && option_change_timer == 0 && option_in_page == true)
    {
       global.ip_up        = 38;
       global.ip_down      = 40;
       global.ip_left      = 37;
       global.ip_right     = 39;
       global.ip_button_a  = 65;
       global.ip_button_b  = 83;
       global.ip_button_s  = 13;
       global.dip_button_a = -1;
       global.dip_button_b = -1;
       global.dip_button_s = -1; 
       if(audio_is_playing(_general_menu_bleep) == true)
       {
          audio_stop(_general_menu_bleep);
       }
       audio_play(_general_menu_bleep, global.sfx_volume);           
    } 
  
    switch(option_selected_in_page)
    {
           case 0:
           {
               if(option_change_mode == 0 && option_change_timer == 0)
               {
                  if(keyboard_check_pressed(global.ip_button_a))
                  {
                     option_change_mode  = 1;
                     option_change_timer = 15; 
                     keyboard_clear(vk_anykey);
                  }
               }   
               else
               {
                  if(option_change_timer == 0)
                  {                
                     global.ip_up = keyboard_key;
                     if(keyboard_check_pressed(vk_anykey))
                     { 
                        keyboard_clear(vk_anykey);
                        option_change_mode  = 0;
                        option_change_timer = 15;
                        if(audio_is_playing(_general_menu_bleep) == true)
                        {
                            audio_stop(_general_menu_bleep);
                        }
                        audio_play(_general_menu_bleep, global.sfx_volume);                           
                     }
                  }
               }             
               break;
           }
           case 1:
           {
               if(option_change_mode == 0 && option_change_timer == 0)
               {
                  if(keyboard_check_pressed(global.ip_button_a))
                  {
                     option_change_mode  = 1;
                     option_change_timer = 15; 
                     keyboard_clear(vk_anykey);                     
                  }
               }   
               else
               {
                  if(option_change_timer == 0)
                  {                
                     global.ip_down = keyboard_key;
                     if(keyboard_check_pressed(vk_anykey))
                     { 
                        keyboard_clear(vk_anykey);
                        option_change_mode  = 0;
                        option_change_timer = 15;
                        if(audio_is_playing(_general_menu_bleep) == true)
                        {
                            audio_stop(_general_menu_bleep);
                        }
                        audio_play(_general_menu_bleep, global.sfx_volume);                           
                     }
                  }
               }             
               break;
           }   
           case 2:
           {
               if(option_change_mode == 0 && option_change_timer == 0)
               {
                  if(keyboard_check_pressed(global.ip_button_a))
                  {
                     option_change_mode  = 1;
                     option_change_timer = 15; 
                     keyboard_clear(vk_anykey);                     
                  }
               }   
               else
               {
                  if(option_change_timer == 0)
                  {                    
                     global.ip_left = keyboard_key;
                     if(keyboard_check_pressed(vk_anykey))
                     { 
                        keyboard_clear(vk_anykey);
                        option_change_mode  = 0;
                        option_change_timer = 15;
                        if(audio_is_playing(_general_menu_bleep) == true)
                        {
                            audio_stop(_general_menu_bleep);
                        }
                        audio_play(_general_menu_bleep, global.sfx_volume);                           
                     }
                  }
               }             
               break;
           }     
           case 3:
           {
               if(option_change_mode == 0 && option_change_timer == 0)
               {
                  if(keyboard_check_pressed(global.ip_button_a))
                  {
                     option_change_mode  = 1;
                     option_change_timer = 15; 
                     keyboard_clear(vk_anykey);                     
                  }
               }   
               else
               {
                  if(option_change_timer == 0)
                  {                    
                     global.ip_right = keyboard_key;
                     if(keyboard_check_pressed(vk_anykey))
                     { 
                        keyboard_clear(vk_anykey);
                        option_change_mode  = 0;
                        option_change_timer = 15;
                        if(audio_is_playing(_general_menu_bleep) == true)
                        {
                            audio_stop(_general_menu_bleep);
                        }
                        audio_play(_general_menu_bleep, global.sfx_volume);                           
                     }
                  }
               }             
               break;
           }  
           case 4:
           {
               if(option_change_mode == 0 && option_change_timer == 0)
               {
                  if(keyboard_check_pressed(global.ip_button_a))
                  {
                     option_change_mode  = 1;
                     option_change_timer = 15;
                     keyboard_clear(vk_anykey);                      
                  }
               }   
               else
               {
                  if(option_change_timer == 0)
                  {                   
                     global.ip_button_a = keyboard_key;
                     if(keyboard_check_pressed(vk_anykey))
                     { 
                        keyboard_clear(vk_anykey);
                        option_change_mode  = 0;
                        option_change_timer = 15;
                        if(audio_is_playing(_general_menu_bleep) == true)
                        {
                            audio_stop(_general_menu_bleep);
                        }
                        audio_play(_general_menu_bleep, global.sfx_volume);                           
                     }
                  }
               }             
               break;
           }   
           case 5:
           {    
               if(option_change_mode == 0 && option_change_timer == 0)
               {
                  if(keyboard_check_pressed(global.ip_button_a))
                  {
                     option_change_mode  = 1;
                     option_change_timer = 15;
                     keyboard_clear(vk_anykey);                      
                  }
               }   
               else
               {
                  if(option_change_timer == 0)
                  {              
                     global.ip_button_b = keyboard_key;
                     if(keyboard_check_pressed(vk_anykey))
                     { 
                        keyboard_clear(vk_anykey);
                        option_change_mode  = 0;
                        option_change_timer = 15;
                        if(audio_is_playing(_general_menu_bleep) == true)
                        {
                            audio_stop(_general_menu_bleep);
                        }
                        audio_play(_general_menu_bleep, global.sfx_volume);                         
                     }
                  }
               }             
               break;
           }    
           case 6:
           {
               if(option_change_mode == 0 && option_change_timer == 0)
               {
                  if(keyboard_check_pressed(global.ip_button_a))
                  {
                     option_change_mode  = 1;
                     option_change_timer = 15; 
                     keyboard_clear(vk_anykey);                     
                  }
               }   
               else
               {
                  if(option_change_timer == 0)
                  {                
                     global.ip_button_s = keyboard_key;
                     if(keyboard_check_pressed(vk_anykey))
                     { 
                        keyboard_clear(vk_anykey);
                        option_change_mode  = 0;
                        option_change_timer = 15;
                        if(audio_is_playing(_general_menu_bleep) == true)
                        {
                            audio_stop(_general_menu_bleep);
                        }
                        audio_play(_general_menu_bleep, global.sfx_volume);                           
                     }
                  }
               }             
               break;
           }    
           case 7:
           {
               if(option_change_mode == 0 && option_change_timer == 0)
               {
                  if(keyboard_check_pressed(global.ip_button_a) && (joy_count() > 0))
                  {
                     option_change_mode  = 1;
                     option_change_timer = 15;                     
                  }
               }   
               else
               {
                  if(option_change_timer == 0)
                  {
                     global.dip_button_a = "Waiting for Input";                    
                     for(i=0; i<joy_buttons(0); i+=1)
                     {
                     
                        if(joy_pressed(0, i))
                        {
                           global.dip_button_a = i;
                           option_change_mode  = 0;
                           option_change_timer = 15;
                           if(audio_is_playing(_general_menu_bleep) == true)
                           {
                               audio_stop(_general_menu_bleep);
                           }
                           audio_play(_general_menu_bleep, global.sfx_volume);   
                        }                      
                     }
                  }
               }             
               break;
           } 
           case 8:
           {
               if(option_change_mode == 0 && option_change_timer == 0)
               {
                  if(keyboard_check_pressed(global.ip_button_a) && (joy_count() > 0))
                  {
                     option_change_mode  = 1;
                     option_change_timer = 15; 
                  }
               }   
               else
               {
                  if(option_change_timer == 0)
                  {
                     global.dip_button_b = "Waiting for Input";                   
                     for(i=0; i<joy_buttons(0); i+=1)
                     {                     
                        if(joy_pressed(0, i))
                        {
                           global.dip_button_b = i;
                           option_change_mode  = 0;
                           option_change_timer = 15;
                           if(audio_is_playing(_general_menu_bleep) == true)
                           {
                               audio_stop(_general_menu_bleep);
                           }
                           audio_play(_general_menu_bleep, global.sfx_volume);                           
                        }                         
                     }
                  }
               }             
               break;
           } 
           case 9:
           {
               if(option_change_mode == 0 && option_change_timer == 0)
               {
                  if(keyboard_check_pressed(global.ip_button_a) && (joy_count() > 0))
                  {
                     option_change_mode  = 1;
                     option_change_timer = 15; 
                  }
               }   
               else
               {
                  if(option_change_timer == 0)
                  {
                     global.dip_button_s = "Waiting for Input";
                     for(i=0; i<joy_buttons(0); i+=1)
                     {
                        if(joy_pressed(0, i))
                        {
                           global.dip_button_s = i;
                           option_change_mode  = 0;
                           option_change_timer = 15;
                           if(audio_is_playing(_general_menu_bleep) == true)
                           {
                               audio_stop(_general_menu_bleep);
                           }
                           audio_play(_general_menu_bleep, global.sfx_volume);                           
                        }                                            
                     }
                  }
               }             
               break;
           }  
           case 10:
           {
               option_string_description = "Change the Analog stick Deadzone.#Set to 0 to disable Analog support. (In case of issues).";
               if(keyboard_check_pressed(vk_right))
               {
                  if(global.setting_input_gamepad_deadzone < 1.0)
                  {
                    global.setting_input_gamepad_deadzone += 0.01;
                  }
                  else
                  {
                    global.setting_input_gamepad_deadzone = 1.0;
                  }
               }
               if(keyboard_check(vk_right))
               {
                  if(option_value_timer > 0)
                  {
                     option_value_timer -= 1;
                  }
                  else
                  {
                     if(global.setting_input_gamepad_deadzone < 1.0)
                     {
                        global.setting_input_gamepad_deadzone += 0.01;
                     }
                     else
                     {
                        global.setting_input_gamepad_deadzone = 1.0;
                     }                
                  }
               }                 
               if(keyboard_check_pressed(vk_left))
               {
                  if(global.setting_input_gamepad_deadzone > 0.0)
                  {
                     global.setting_input_gamepad_deadzone -= 0.01;
                  }
                  else
                  {
                    global.setting_input_gamepad_deadzone = 0;
                  }
               }      
               if(keyboard_check(vk_left))
               {
                  if(option_value_timer > 0)
                  {
                     option_value_timer -= 1;
                  }
                  else
                  {
                     if(global.setting_input_gamepad_deadzone > 0.0)
                     {
                        global.setting_input_gamepad_deadzone -= 0.01;
                     }
                     else
                     {
                        global.setting_input_gamepad_deadzone = 0;
                     }                  
                  }
               }  
               if(!keyboard_check(vk_left) && !keyboard_check(vk_right))
               {
                  option_value_timer = 30;
               }     
               break;
           }                                                                                                                              
    } 

    
 // Save:
    global.setting_input_up               = global.ip_up;
    global.setting_input_down             = global.ip_down;
    global.setting_input_left             = global.ip_left;
    global.setting_input_right            = global.ip_right;
    global.setting_input_button_a         = global.ip_button_a;
    global.setting_input_button_b         = global.ip_button_b;
    global.setting_input_button_s         = global.ip_button_s;
    global.setting_input_gamepad_button_a = global.dip_button_a;
    global.setting_input_gamepad_button_b = global.dip_button_b;
    global.setting_input_gamepad_button_s = global.dip_button_s;     
