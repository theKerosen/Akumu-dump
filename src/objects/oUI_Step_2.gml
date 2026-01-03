if (global.gamePaused)
{
    keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
    keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
    pauseOptionSelected += (keyDown - keyUp);
    
    if (pauseOptionSelected >= array_length(pauseOption))
        pauseOptionSelected = 0;
    
    if (pauseOptionSelected < 0)
        pauseOptionSelected = array_length(pauseOption) - 1;
    
    if (keyDown)
        audio_play_sound(sndMove, 0, false, 1.1, 0, 2);
    
    if (keyUp)
        audio_play_sound(sndMove, 0, false, 1.1, 0, 2);
    
    keyActivate = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
    
    if (keyActivate)
    {
        switch (pauseOptionSelected)
        {
            case 0:
                audio_play_sound(sndCancel, 0, false, 1, 0, 2);
                global.gamePaused = false;
                audio_resume_sound(oOST.songAsset);
                
                with (all)
                    image_speed = gamePausedImageSpeed;
                
                break;
            
            case 1:
                audio_play_sound(sndCancel, 0, false, 1, 0, 2);
                game_restart();
                break;
            
            case 2:
                audio_play_sound(sndCancel, 0, false, 1, 0, 2);
                game_end();
                break;
        }
    }
}
