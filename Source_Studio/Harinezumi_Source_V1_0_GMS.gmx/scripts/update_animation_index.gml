/// update_animation_index()
 // Script used to assign a animation.

 // Sonic:
    if(character_id = CHAR_SONIC)
    {
       set_animation("STAND",          spr_sonic_stand,    0,  0, 0, -1, "", 0);
       set_animation("BORED_1",       spr_sonic_idle_1, 0.25, 13, 8, 12, "BORED_2", 0);    
       set_animation("BORED_2",       spr_sonic_idle_2, 0.25, 13, 9, -1, "BORED_2", 0);        
       set_animation("LOOK",         spr_sonic_look_up, 0.35,  4, 0,  0, "", 0);    
       set_animation("LOOK_END",    spr_sonic_look_end, 0.18,  1, 0,  0, "STAND", 0);            
       set_animation("CROUCH",        spr_sonic_crouch, 0.6,   3, 0,  0, "", 0);    
       set_animation("CROUCH_UP",  spr_sonic_crouch_up, 0.40,  1, 0,  0, "STAND", 0);   
       set_animation("PUSH",            spr_sonic_push, 0.15,  9, 0, -1, "", 0);         
       set_animation("WALK",            spr_sonic_walk, 0.25, 11, 0, -1, "", 0); 
       set_animation("JOG",              spr_sonic_jog, 0.25,  9, 0, -1, "", 0);    
       set_animation("RUN",              spr_sonic_run, 0.25,  7, 0, -1, "", 0);  
       set_animation("DASH",            spr_sonic_dash, 0.25,  4, 1, -1, "", 0);      
       set_animation("PEELOUT",      spr_sonic_peelout, 0.60,  4, 1, -1, "", 0);          
       set_animation("ROLL",            spr_sonic_roll, 0.5,  15, 0, -1, "", 0);
       set_animation("SPINDASH",    spr_sonic_spindash, 0.8,  15, 0, -1, "", 0);
       set_animation("DROPDASH",    spr_sonic_dropdash,   1,  15, 0, -1, "", 0); 
       set_animation("SPRING",        spr_sonic_spring, 0.15,  1, 0, -1, "", 0);                 
       set_animation("TWIRL",          spr_sonic_twirl, 0.5,  9, 0, -1, "", 0);         
       set_animation("SKID",            spr_sonic_skid, 0.35,  8, 5,  0, "", 0); 
       set_animation("SKID TURN",  spr_sonic_skid_turn, 0.25,  2, 0,  0, "", 0);             
       set_animation("BALANCE",    spr_sonic_balance_1, 0.20,  7, 0, -1, "", 0); 
       set_animation("BALANCE 2",  spr_sonic_balance_2, 0.20,  7, 0, -1, "", 0);        
       set_animation("HURT",            spr_sonic_hurt, 0.18,  4, 3, -1, "", 0); 
       set_animation("BREATHE",      spr_sonic_breathe, 0.20,  5, 0,  0, "WALK", 0);              
       set_animation("DEATH",          spr_sonic_death,    0,  0, 0, -1, "", 0);        
       set_animation("DROWN",          spr_sonic_drown,    0,  0, 0, -1, "", 0);    
    }

 // Tails:
    if(character_id = CHAR_TAILS)
    {
       set_animation("STAND",          spr_miles_stand,    0,  0, 0, -1, "", 0);
       set_animation("BORED_1",         spr_miles_idle, 0.20, 46, 1, -1, "", 0);         
       set_animation("LOOK",         spr_miles_look_up, 0.35,  4, 0,  0, "", 0);    
       set_animation("LOOK_END",    spr_miles_look_end, 0.18,  1, 0,  0, "STAND", 0);            
       set_animation("CROUCH",        spr_miles_crouch,  0.6,   5, 0,  0, "", 0);    
       set_animation("CROUCH_UP",  spr_miles_crouch_up, 0.40,  1, 0,  0, "STAND", 0);   
       set_animation("PUSH",            spr_miles_push, 0.15,  9, 0, -1, "", 0);         
       set_animation("WALK",            spr_miles_walk, 0.25, 11, 0, -1, "", 0); 
       set_animation("JOG",              spr_miles_jog, 0.25,  9, 0, -1, "", 0);    
       set_animation("RUN",              spr_miles_run, 0.25,  8, 1, -1, "", 0);  
       set_animation("DASH",            spr_miles_dash, 0.25,  4, 1, -1, "", 0);             
       set_animation("ROLL",            spr_miles_roll,  0.5,  15, 0, -1, "", 0);
       set_animation("SPINDASH",    spr_miles_spindash,  0.8,  15, 0, -1, "", 0);         
       set_animation("SPRING",        spr_miles_spring, 0.15,  1, 0, -1, "", 0);       
       set_animation("TWIRL",          spr_miles_twirl,  0.5,  9, 0, -1, "", 0);         
       set_animation("SKID",            spr_miles_skid, 0.35,  6, 5,  0, "", 0); 
       set_animation("SKID TURN",  spr_miles_skid_turn, 0.25,  2, 0,  0, "", 0);             
       set_animation("BALANCE",    spr_miles_balance_1, 0.20,  6, 0, -1, "", 0); 
       set_animation("BALANCE 2",  spr_miles_balance_2, 0.20,  7, 0, -1, "", 0);
       set_animation("FLY",              spr_miles_fly, 0.45,  3, 0, -1, "", 0); 
       set_animation("FLY DROP",   spr_miles_fly_tired, 0.20,  6, 0, -1, "", 0);   
       set_animation("SWIM",            spr_miles_swim, 0.25,  9, 0, -1, "", 0); 
       set_animation("SWIM DROP", spr_miles_swim_tired, 0.20,  7, 0, -1, "", 0);                          
       set_animation("HURT",            spr_miles_hurt, 0.18,  4, 3, -1, "", 0); 
       set_animation("BREATHE",      spr_miles_breathe, 0.20,  6, 0,  0, "WALK", 0);              
       set_animation("DEATH",          spr_miles_death,    0,  0, 0, -1, "", 0);        
       set_animation("DROWN",          spr_miles_drown,    0,  0, 0, -1, "", 0);    
    }

 // Knuckles:
    if(character_id = CHAR_KNUX)
    {
       set_animation("STAND",               spr_knuckles_stand,    0,  0, 0, -1, "", 0);
       set_animation("BORED_1",            spr_knuckles_idle_1, 0.15, 4, 1, 12, "BORED_2", 0);    
       set_animation("BORED_2",            spr_knuckles_idle_2, 0.20, 53, 1, -1, "BORED_2", 0);        
       set_animation("LOOK",              spr_knuckles_look_up, 0.35,  4, 0,  0, "", 0);    
       set_animation("LOOK_END",         spr_knuckles_look_end, 0.18,  1, 0,  0, "STAND", 0);            
       set_animation("CROUCH",             spr_knuckles_crouch,  0.6,   3, 0,  0, "", 0);    
       set_animation("CROUCH_UP",       spr_knuckles_crouch_up, 0.40,  2, 0,  0, "STAND", 0);   
       set_animation("PUSH",                 spr_knuckles_push, 0.15,  9, 0, -1, "", 0);         
       set_animation("WALK",                 spr_knuckles_walk, 0.25, 11, 0, -1, "", 0); 
       set_animation("JOG",                   spr_knuckles_jog, 0.25,  9, 0, -1, "", 0);    
       set_animation("RUN",                   spr_knuckles_run, 0.25,  7, 0, -1, "", 0);  
       set_animation("DASH",                 spr_knuckles_dash, 0.25,  4, 1, -1, "", 0);       
       set_animation("ROLL",                 spr_knuckles_roll,  0.5,  15, 0, -1, "", 0);
       set_animation("SPINDASH",         spr_knuckles_spindash,  0.8,  15, 0, -1, "", 0);  
       set_animation("SPRING",             spr_knuckles_spring, 0.15,  1, 0, -1, "", 0);             
       set_animation("TWIRL",               spr_knuckles_twirl,  0.5,  9, 0, -1, "", 0);         
       set_animation("SKID",                 spr_knuckles_skid, 0.35,  4, 4,  0, "", 0); 
       set_animation("SKID TURN",       spr_knuckles_skid_turn, 0.25,  2, 0,  0, "", 0);             
       set_animation("BALANCE",         spr_knuckles_balance_1, 0.20,  5, 0, -1, "", 0); 
       set_animation("BALANCE 2",       spr_knuckles_balance_2, 0.20,  5, 0, -1, "", 0);        
       set_animation("HURT",                 spr_knuckles_hurt, 0.18,  4, 3, -1, "", 0); 
       set_animation("BREATHE",           spr_knuckles_breathe, 0.20,  6, 0,  0, "WALK", 0);              
       set_animation("DEATH",               spr_knuckles_death,    0,  0, 0, -1, "", 0);        
       set_animation("DROWN",               spr_knuckles_drown,    0,  0, 0, -1, "", 0);
       set_animation("GLIDE",               spr_knuckles_glide, 0.25,  2, 0, -1, "", 0);
       set_animation("GLIDE TURN",     spr_knuckles_glide_turn,    0,  0, 0, 0, "", 0);  
       set_animation("GLIDE DROP",     spr_knuckles_glide_drop, 0.25,  3, 0, 0, "", 0);        
       set_animation("CLIMB",          spr_knuckles_climb_idle, 0.15,  3, 0, -1, "", 0); 
       set_animation("CLIMB UP",         spr_knuckles_climb_up, 0.25,  7, 0, -1, "", 0);  
       set_animation("CLIMB DOWN",     spr_knuckles_climb_down, 0.10,  1, 0, -1, "", 0); 
       set_animation("SLIDE",               spr_knuckles_slide,    0,  6, 0, -1, "", 0);  
       set_animation("CLIMB LEDGE",   spr_knuckles_climb_ledge, 0.20,  7, 0, -1, "STAND", 0);                                            
    }    
