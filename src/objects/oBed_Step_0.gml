var actionkey = keyboard_check_pressed(vk_anykey);

if ((actionkey && deitado == true) || global.leave == 1)
{
    if (global.leave == 1)
    {
    }
    
    deitado = false;
    image_speed = 1.5;
    saindo = 1;
    sprite_index = sBedSleepOFF;
    global.leave = 0;
}
