/// sonic_state_insta_shield()
 // This is used for the insta shield.
  
 // Sonic's insta shield.
    if(shield_usable == true && shield_index == 0 && shield_object == noone && invincibility == 0)
    {
       if(input_action_pressed)
       {
          if(instance_exists(obj_shield_insta) == false)
          {
             shield_usable = false;
             instance_create(x, y, obj_shield_insta);
             audio_play(_shield_use_insta, global.sfx_volume);               
          }
       }
    }

