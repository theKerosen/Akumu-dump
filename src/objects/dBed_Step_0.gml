var actionkey = keyboard_check_pressed(vk_anykey) || gamepad_button_check_pressed(global.controller, gp_face2);

if ((actionkey && deitado == true) || global.leaveDeath == 1)
{
    if (global.leaveDeath == 1)
        depth = 110;
    
    if (instance_exists(oTimer))
        instance_destroy(oTimer);
    
    deitado = false;
    image_speed = 1.5;
    saindo = 1;
    alarm[0] = -1;
    sprite_index = sBedSleepOFF;
    global.leaveDeath = 0;
}
