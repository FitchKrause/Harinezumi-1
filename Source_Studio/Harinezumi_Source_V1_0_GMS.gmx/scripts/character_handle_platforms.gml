/// character_handle_platforms()
 // Script that handles terrain that moves.
 
    platform_id  = character_collision_check(COL_BOTTOM_OBJECT, MASK_BIG, x, y, angle, par_moving_platform);
    swing_id     = character_collision_check(COL_BOTTOM_OBJECT, MASK_BIG, x, y, angle, par_swing_platform);

