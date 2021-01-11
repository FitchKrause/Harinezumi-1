/// draw_text_color_selected(x, y, text, if, then color, else color)

    if(argument3)
    {
       draw_set_color(argument4);
       draw_text(argument0, argument1, argument2);
       draw_set_color(c_white);
    }
    else
    {
       draw_set_color(argument5);
       draw_text(argument0, argument1, argument2);
       draw_set_color(c_white);
    }
    
