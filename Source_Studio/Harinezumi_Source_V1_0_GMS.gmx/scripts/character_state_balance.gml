/// character_state_balance()
 // Trigger the balance animation on tile edges.
 
    if(ground && x_speed == 0 && y_speed == 0 && angle == 0)
    {
       if(state = CS_DEFAULT || state = CS_BALANCE)
       {
          if(character_collision_check(COL_LEFT_EDGE, x, y, 8) && !character_collision_check(COL_RIGHT_EDGE, x, y, 350))
          {
             state = CS_BALANCE;
             if(animation_direction == 1)
             {
                if(animation_index != "BALANCE")
                {
                   animation_index = "BALANCE";
                }
             }
             else
             {
                if(animation_index != "BALANCE 2")
                {
                   animation_index = "BALANCE 2";
                }
             }
          }   
          else
          if(!character_collision_check(COL_LEFT_EDGE, x, y, 8) && character_collision_check(COL_RIGHT_EDGE, x, y, 350))
          {
             state = CS_BALANCE;
             if(animation_direction == 1)
             {
                if(animation_index != "BALANCE 2")
                {
                   animation_index = "BALANCE 2";
                }
             }
             else
             {
                if(animation_index != "BALANCE")
                {
                   animation_index = "BALANCE";
                }
             }
          }  
       }
    }
    
 // Stop balancing.
    if(x_speed <> 0 || y_speed <> 0)
    {
       if(state == CS_BALANCE)
       {
          state = CS_DEFAULT;
       }
    }
    

