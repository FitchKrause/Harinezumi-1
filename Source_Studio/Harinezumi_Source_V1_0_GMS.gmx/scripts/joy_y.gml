// joy_y(id)
//Returns the position (from -1 to 1) of the second axis on the joystick.

if(joystick_exists(0) == true)
{
return external_call(global.ljoyAxis, argument0, 1);
}
//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!
