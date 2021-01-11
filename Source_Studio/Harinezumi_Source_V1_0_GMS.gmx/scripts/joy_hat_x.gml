// joy_hat_x(id, hat)  [or joy_hat_x(id) for hat 0]
//Returns the hat's horizontal position as -1 (left), 0 (center) or 1 (right).

if(joystick_exists(0) == true)
{
return external_call(global.ljoyHatX, argument0, 0);
}

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!
