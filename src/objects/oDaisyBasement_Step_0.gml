depth = -bbox_bottom;

if (global.gamePaused || !instance_exists(oPlayer))
{
    path_end();
    exit;
}

var dist = point_distance(x, y, oPlayer.x, oPlayer.y);

if (!audio_is_playing(sndDoor) && canAppear && deb2 == false)
{
    deb2 = true;
    Delay(100, function()
    {
        canRun = true;
    });
}

if (!audio_is_playing(sndDoor) && deb3 == 1)
{
    oPlayer.state = 0;
    deb3 = 2;
}

if (canRun)
{
    if (play == false)
    {
        audio_play_sound(sndChaseLV1, 0, true);
        play = true;
    }
    
    oPlayer.state = 0;
    path_delete(path);
    path = path_add();
    mp_potential_path(path, oPlayer.x, oPlayer.y, 1.4, 4, false);
    path_start(path, 1.4, path_action_stop, true);
    var dx = x - previous_x;
    var dy = y - previous_y;
    
    if (dx != 0 || dy != 0)
    {
        if (abs(dx) > abs(dy))
            sprite_index = (dx > 0) ? sSarah_R : sSarah_L;
        else
            sprite_index = (dy > 0) ? sSarah_D : sSarah_U;
    }
    else
    {
        image_index = 0;
    }
    
    previous_x = x;
    previous_y = y;
}
else
{
    image_index = 0;
}

if (dist < 120 && deb3 == 0)
{
    deb3 = 1;
    audio_play_sound(sndDoor, 0, 0, 0.15);
    oPlayer.state = 5;
}

if (dist > 60 || deb == true)
    exit;

deb = true;
audio_play_sound(sndDoorClose, 0, 0, 0.5);
canAppear = true;
