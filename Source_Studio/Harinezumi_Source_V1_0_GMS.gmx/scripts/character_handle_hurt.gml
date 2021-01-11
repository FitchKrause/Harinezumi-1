/// character_handle_hurt();
 // Script that handles the hurting objects.
 
    var hurt;
        hurt = character_collision_check(COL_MAIN_OBJECT, x, y, par_hurt);
    if(hurt != noone)
    {
       character_state_hurt(hurt, false);
    }
    
    var hurt_ind;
        hurt_ind = character_collision_check(COL_MAIN_OBJECT, x, y, par_hurt_indestructible);
    if(hurt_ind != noone)
    {
       character_state_hurt(hurt_ind, false);
    }
