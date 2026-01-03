draw_self();

if (global.debounce2 == false && global.basementpuzzlecomplete == false)
{
    if (state == 1)
    {
        if (global.textComplete)
        {
            if (!instance_exists(oOption))
                instance_create_depth(0, 0, -999, oOption);
            
            if (instance_exists(oOption))
            {
                if (!instance_exists(oOptionD))
                    instance_create_layer(x, y, "UI", oOptionD);
            }
        }
    }
    
    keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
    keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
    keyAction = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
    
    if (keyDown && global.textComplete)
    {
        if (instance_exists(oOption))
        {
            oGame.opSelected += 1;
            audio_play_sound(sndMove, 0, false, 1.1, 0, 2);
        }
    }
    
    if (keyUp && global.textComplete)
    {
        if (instance_exists(oOption))
        {
            oGame.opSelected -= 1;
            audio_play_sound(sndMove, 0, false, 1.1, 0, 2);
        }
    }
    
    if (oGame.opSelected < 0)
        oGame.opSelected = 1;
    
    if (oGame.opSelected > 1)
        oGame.opSelected = 0;
    
    if (keyAction)
    {
        if (instance_exists(oOptionD))
            instance_destroy(oOptionD);
        
        if (instance_exists(oOption))
            instance_destroy(oOption);
        
        if (oGame.opSelected == 0)
        {
            event_user(1);
            global.debounce2 = true;
            global.textComplete = false;
            oGame.opSelected = 1;
        }
    }
    else if (oGame.opSelected == 1)
    {
        global.textComplete = false;
        oGame.opSelected = 1;
    }
}
