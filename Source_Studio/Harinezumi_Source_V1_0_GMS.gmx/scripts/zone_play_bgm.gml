/// zone_play_bgm(room id, music id);
 // Play background music.
  
    if(room == argument0)
    {
       global._bgmHandle = audio_loop(argument1, global.bgm_volume);
    }
 

