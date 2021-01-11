/// character_handle_badnik()
 // Script to handle badniks

 // Getting hurt.
    if not (state == CS_FLY && y_speed < 0)
            if(state != CS_JUMP && state != CS_ROLL && state != CS_SPINDASH && state != CS_HURT && state != CS_GLIDE && state != CS_SLIDE)
            {
               if(invincibility == 0)
               {
                  var badnik;
                  badnik = character_collision_check(COL_MAIN_OBJECT, x, y, par_badnik);
                  if(badnik != noone)
                  {
                    character_state_hurt(badnik, false);
                  }
               }
    }
 
 // Hurting badnik:
    if(state == CS_JUMP || state == CS_ROLL || state == CS_SPINDASH || state == CS_FLY || state == CS_GLIDE || state == CS_SLIDE || invincibility == 2 || shield_state == 1)
    {
       var badnik;
           badnik = character_collision_check(COL_MAIN_OBJECT, x, y, par_badnik);
        if(badnik != noone)
        {
           if((state == CS_JUMP && y_speed > 0) || (state == CS_ROLL && y_speed > 0) || (invincibility == 2 && y_speed > 0))
           {
              // Destroy badnik:
                 with(badnik)
                 {
                      instance_destroy();
                 }
                 
              // Rebound:
                 y_speed       *= -1;
                 ground         = false;
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
           else if((state == CS_JUMP && y_speed <= 0) || (state == CS_ROLL && y_speed <= 0) || (state == CS_FLY && y_speed < 0) || state == CS_SPINDASH || state == CS_GLIDE || state == CS_SLIDE || invincibility == 2)
           {
                    with(badnik)
                    {
                         instance_destroy();
                    }
                    if(y_speed <= 0 && !ground)
                    {
                       y_speed -= 1;
                    }
           }
        }
    }

