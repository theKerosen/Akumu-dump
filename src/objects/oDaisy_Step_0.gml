depth = -bbox_bottom;

if (canRun)
{
    var dist = point_distance(x, y, oPlayer.x, oPlayer.y);
    
    if (global.isHiding)
    {
        audio_stop_sound(sndChaseLV2);
        path_end();
        exit;
    }
    
    if (audio_is_paused(sndChaseLV2))
        audio_resume_sound(sndChaseLV2);
    
    if (play == false)
    {
        audio_pause_sound(sndBasement2);
        
        if (!audio_is_playing(sndChaseLV2))
        {
            audio_play_sound(sndChaseLV2, 0, true);
            play = true;
        }
    }
    
    if (global.gamePaused || instance_exists(oWarp) || instance_exists(oTransition) || oPlayer.state == 5 || oPlayer.state == 1)
    {
        image_speed = 0;
        path_end();
        exit;
    }
    
    image_speed = 1;
    path_delete(path);
    path = path_add();
    mp_potential_path(path, oPlayer.x, oPlayer.y, 1, 4, false);
    path_start(path, 1, path_action_stop, true);
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
