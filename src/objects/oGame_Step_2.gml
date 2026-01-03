if (!instance_exists(oPlayer))
    exit;

var pausekey = keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("X"));

if (pausekey && !instance_exists(oWarp) && !instance_exists(parMenu) && !instance_exists(oTransition) && !instance_exists(oNotPause) && oPlayer.state == 0)
{
    if (global.gamePaused)
    {
        audio_play_sound(sndCancel, 0, false, 1, 0, 2);
        audio_resume_sound(oOST.songAsset);
    }
    else
    {
        audio_play_sound(sndSelect, 0, false, 1, 0, 2);
        audio_pause_sound(oOST.songAsset);
    }
    
    global.gamePaused = !global.gamePaused;
    
    if (global.gamePaused)
    {
        with (all)
        {
            gamePausedImageSpeed = image_speed;
            image_speed = 0;
        }
    }
    else
    {
        with (all)
            image_speed = gamePausedImageSpeed;
    }
}

depth = -bbox_bottom;
