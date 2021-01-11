/// tail_animation_setup()
 // Script used to apply the tail parts for Miles.
 
    switch(animation_index)
    {
           case "STAND":
           case "BORED_1":
           case "LOOK":
           case "LOOK_END":
           case "CROUCH":
           case "CROUCH_UP":
           {
                tail_apply_animation(spr_tail_0, 0.25, animation_direction*-18, 0, 0, animation_direction);
                break;
           }
           case "PUSH":
           {
                tail_apply_animation(spr_tail_0, 0.25, animation_direction*-10, 0, 0, animation_direction);
                break;
           }                       
           case "SKID":
           case "SKID TURN":
           {
                tail_apply_animation(spr_tail_0, 0.25, animation_direction*-10, 0, 0, animation_direction);
                break;
           }  
           case "ROLL":
           {
                tail_apply_animation(spr_tail_2, 0.25, 0, 0, 0, animation_direction);               
                break;
           } 
           case "SPINDASH":
           {
                tail_apply_animation(spr_tail_1, 0.50, animation_direction*-22, 6, 0, animation_direction);  
                break;
           }                   
           default:
           {
                tail_apply_animation(noone, -1, -1, -1, -1, -1);
                break;
           }
    }

