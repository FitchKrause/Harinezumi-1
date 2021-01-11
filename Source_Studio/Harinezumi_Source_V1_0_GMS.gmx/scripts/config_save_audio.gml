/// config_save_audio() 
 // Save configuration file for audio settings.
 
    _file = file_text_open_write(working_directory+"\data\config\audio.hzc");
            file_text_write_real(_file, global.setting_music_vol);
            file_text_writeln(_file);
            file_text_write_real(_file, global.setting_sound_vol);       
            file_text_writeln(_file);
            file_text_write_real(_file, global.setting_event_vol);                                          
            file_text_close(_file);

