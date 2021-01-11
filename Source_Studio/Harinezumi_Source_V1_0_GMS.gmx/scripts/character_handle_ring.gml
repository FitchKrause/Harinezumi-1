/// character_handle_ring()
 // Script to handle rings.
 
    var ring;
        ring = character_collision_check(COL_MAIN_OBJECT, x, y, obj_ring);
    var magnetized_ring;
        magnetized_ring = character_collision_check(COL_MAIN_OBJECT, x, y, obj_ring_magnetized);     
        
 // Collect ring.
    if((ring != noone && state != CS_HURT))
    {
       // Collect ring:
          if(invincibility != 1 || (invincibility == 1 && invincibility_timer > -1 && invincibility_timer <= 90))
          {
          
          with(ring)
          { 
               randomize();
               repeat(irandom_range(2, 4))
               {
                      randomize();
                      dummy_effect_create(choose(spr_ring_sparkle_01, spr_ring_sparkle_02, spr_ring_sparkle_03), 0.35, x+random_range(-8, 8), y+random_range(-8, 8), -10, 0);
               }
               instance_destroy();
          }
          global.crings += 1;
                
       // Play ring sound:
          global.ring_pan *= -1;
          if(global.ring_pan = -1)
          {
             audio_play(_general_ring_left, global.sfx_volume); 
          }
          if(global.ring_pan = 1)
          {
             audio_play(_general_ring_right, global.sfx_volume); 
          }                                                           
          }
    }
    if((magnetized_ring != noone && state != CS_HURT))
    {
       // Collect ring:
          if(invincibility != 1 || (invincibility == 1 && invincibility_timer > -1 && invincibility_timer <= 90))
          {
                 
          with(magnetized_ring)
          { 
               randomize();
               repeat(irandom_range(2, 4))
               {
                      randomize();
                      dummy_effect_create(choose(spr_ring_sparkle_01, spr_ring_sparkle_02, spr_ring_sparkle_03), 0.35, x+random_range(-8, 8), y+random_range(-8, 8), -10, 0);
               }
               instance_destroy();
          }
          global.crings += 1;
                
       // Play ring sound:
          global.ring_pan *= -1;
          if(global.ring_pan = -1)
          {
             audio_play(_general_ring_left, global.sfx_volume); 
          }
          if(global.ring_pan = 1)
          {
             audio_play(_general_ring_right, global.sfx_volume); 
          }       
                                           
          }
    }
