/// character_state_shield();
 // The character shield state.
 
 // Only run if we have a shield and we're not invincible.
    if(shield_index != 0 && invincibility == 0)
    {
       // Fire shield.
       // ---------------------------------------------------------------------
          if(shield_index == SHIELD_FIRE)
          {
             if(shield_usable == true && input_action_pressed)
             {
                x_speed            = animation_direction*8;
                y_speed            = 0;
                shield_object      . image_xscale = animation_direction;
                shield_object      . sprite_index = spr_shield_flames_burst;
                shield_state       = 1;
                shield_usable      = false;
                if(global.setting_gameplay_camera_lag == true)    
                {         
                   ctr_camera.cam_lag = 16;              
                }
                audio_play(_shield_use_fire, global.sfx_volume);  
             }
             if((shield_state == 1 && ground) || (state == CS_SPRING || state == CS_SPRING_DIAGONAL))
             {
                shield_object . sprite_index = spr_shield_flames;
                shield_state  = 0;
             }
             if(shield_object.image_xscale != 1 && shield_state == 0)
             {
                shield_object.image_xscale = 1;
             }
             if(((character_collision_check(COL_RIGHT, MASK_BIG, x, y, angle)) || (character_collision_check(COL_LEFT, MASK_BIG, x, y, angle))))
             {
                if(shield_state == 1)
                {
                   shield_object . sprite_index = spr_shield_flames;
                   shield_state  = 0;          
                }
            }
            if(ctr_camera.cam_lag == 0 && global.setting_gameplay_camera_lag == true || global.setting_gameplay_camera_lag == false && (shield_object.alarm[0] == -1 || ground == true))
            {
               if(shield_state == 1)
               {
                  shield_object . sprite_index = spr_shield_flames;
                  shield_state  = 0; 
               }
            }               
          }
          
       // Destroy fire / lightning shield underwater.
          if((shield_index == SHIELD_FIRE || shield_index == SHIELD_LIGHTNING) && physic_state == 1)
          {
             shield_index = 0;
             with(shield_object)
             {
                 instance_destroy();
             }
             shield_object = noone;
          }   
          
       // Bubble shield.
       // ---------------------------------------------------------------------       
          if(shield_index == SHIELD_BUBBLE)
          {             
             if(shield_usable == true && input_action_pressed)
             {
                x_speed       = 0;
                y_speed       = 8;
                shield_state  = 1;
                shield_usable = false;
                shield_object . shield_sprite_frame  = 0;
                shield_object . shield_overlay_frame = 0;                 
                shield_object . shield_sprite        = spr_shield_bubble_drop;                      
                state         = CS_JUMP;  
                jump_lock     = false;         
             }
             if(shield_state == 1 && ground)
             {
                ground = false;
                state  = CS_JUMP;
                if(physic_state == 0)
                {
                   y_speed = -(dsin(angle_relative) * g_speed) - (dcos(angle_relative) * 7.5); 
                }
                else
                {
                   y_speed = -(dsin(angle_relative) * g_speed) - (dcos(angle_relative) * 7.5/2);    
                }
                jump_completed                       = false;   
                jump_lock                            = false;   
                shield_state                         = 2;
                shield_usable                        = true;
                shield_object . shield_sprite_frame  = 0;
                shield_object . shield_overlay_frame = 0;                 
                shield_object . shield_sprite        = spr_shield_bubble_bounce; 
                audio_play(_shield_use_bubble, global.sfx_volume);               
             }
             if(shield_state >= 1 && (state == CS_SPRING || state == CS_SPRING_DIAGONAL) || state == CS_HURT)
             {
                shield_state  = 0;
                shield_usable = 0;
                shield_object . shield_sprite_frame  = 0;
                shield_object . shield_overlay_frame = 0;                 
                shield_object . shield_sprite        = spr_shield_bubble_bounce;                 
             }
          }
          
       // Lightning shield.
       // ---------------------------------------------------------------------     
          if(shield_index == SHIELD_LIGHTNING)
          {             
             if(shield_usable == true && input_action_pressed)
             {
                jump_completed = true;
                y_speed        = -5.5;
                shield_usable  = false;
                jump_lock      = false; 
                audio_play(_shield_use_lightning, global.sfx_volume); 
                for(i=0; i<4; i+=1)
                {
                    _spark = instance_create(floor(x), floor(y), obj_lightning_spark);
                    switch(i)
                    {
                        case 0: { _spark._direction = 0;   break; }
                        case 1: { _spark._direction = 180; break; }
                        case 2: { _spark._direction = 224; break; }
                        case 3: { _spark._direction = 315; break; }
                    }
                }
             }
          }
    }

