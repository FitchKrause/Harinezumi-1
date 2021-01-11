/// config_save_input() 
 // Save configuration file for input settings.
 
    _file = file_text_open_write(working_directory+"\data\config\input.hzc");
            file_text_write_real(_file, global.setting_input_up);
            file_text_writeln(_file);
            file_text_write_real(_file, global.setting_input_down);  
            file_text_writeln(_file);            
            file_text_write_real(_file, global.setting_input_left);
            file_text_writeln(_file);
            file_text_write_real(_file, global.setting_input_right);        
            file_text_writeln(_file);    
            file_text_write_real(_file, global.setting_input_button_a);
            file_text_writeln(_file);
            file_text_write_real(_file, global.setting_input_button_b);  
            file_text_writeln(_file);            
            file_text_write_real(_file, global.setting_input_button_s);
            file_text_writeln(_file);
            file_text_write_real(_file, global.setting_input_gamepad_button_a);
            file_text_writeln(_file);
            file_text_write_real(_file, global.setting_input_gamepad_button_b);  
            file_text_writeln(_file);            
            file_text_write_real(_file, global.setting_input_gamepad_button_s); 
            file_text_writeln(_file);            
            file_text_write_real(_file, global.setting_input_gamepad_deadzone);                                                             
            file_text_close(_file);

           
