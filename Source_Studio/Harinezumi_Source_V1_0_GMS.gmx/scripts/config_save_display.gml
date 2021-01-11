/// config_save_display() 
 // Save configuration file for display settings.
 
    _file = file_text_open_write(working_directory+"\data\config\screen.hzc");
            file_text_write_real(_file, global.setting_display_scale);
            file_text_writeln(_file);
            file_text_write_real(_file, global.setting_display_fullscreen);
            file_text_writeln(_file);            
            file_text_write_real(_file, global.setting_display_vsync);
            file_text_writeln(_file);            
            file_text_write_real(_file, global.setting_display_hud);             
            file_text_writeln(_file);
            file_text_write_real(_file, global.setting_display_alt_sync);                     
            file_text_close(_file);
