if (!quit && image_alpha != 1)
    image_alpha += fadeSpeed;

if (quit)
{
    image_alpha -= quitSpeed;
    
    with (oTitle)
        image_alpha -= oMenu.quitSpeed;
}

if (image_alpha >= 0.5)
    completed = 1;

if (instance_exists(oTransition))
    selected = true;
else
    selected = false;

if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")))
{
    if (!selected)
    {
        menuSelected += 1;
        
        if (menuSelected == 1 && !global.any_save_exists)
            menuSelected += 1;
        
        if (menuSelected > 3)
            menuSelected = 0;
        
        audio_play_sound(sndMove, 0, false, 1, 0, 2);
    }
}

if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")))
{
    if (!selected)
    {
        menuSelected -= 1;
        
        if (menuSelected == 1 && !global.any_save_exists)
            menuSelected -= 1;
        
        if (menuSelected < 0)
            menuSelected = 3;
        
        audio_play_sound(sndMove, 0, false, 1, 0, 2);
    }
}

if (menuSelected > 3)
    menuSelected = 0;
else if (menuSelected < 0)
    menuSelected = 3;

if (menuSelected == 0)
{
    for (var i = 0; i < total_slots; i++)
    {
        var file = "akumu" + string(i) + ".ini";
        image_index = file_exists(file) ? 4 : 0;
    }
    
    if (keyboard_check_pressed(ord("Z")) || (keyboard_check_pressed(vk_enter) && selected == false))
    {
        for (var i = 0; i < total_slots; i++)
        {
            var file = "akumu" + string(i) + ".ini";
            
            if (global.any_save_exists)
            {
                if (completed == 1 && selected == false)
                {
                    audio_play_sound(sndSelect, 0, false, 1, 0, 2);
                    instance_create_layer(x, y, "Instances", oSaveSlots);
                    instance_deactivate_object(self);
                    instance_deactivate_object(oTitle);
                    selected = true;
                }
            }
            else if (completed == 1 && selected == false)
            {
                oGlobal.canCount = true;
                audio_play_sound(sndSelect, 0, false, 1, 0, 2);
                instance_create_depth(0, 0, -999999999, oTransition);
                oTransition.targetRoom = nLoading;
                selected = true;
            }
        }
    }
}

if (menuSelected == 1)
{
    for (var i = 0; i < total_slots; i++)
    {
        var file = "akumu" + string(i) + ".ini";
        image_index = file_exists(file) ? 5 : 1;
    }
    
    if (keyboard_check_pressed(ord("Z")) || (keyboard_check_pressed(vk_enter) && selected == false))
    {
        for (var i = 0; i < total_slots; i++)
        {
            var file = "akumu" + string(i) + ".ini";
            
            if (global.any_save_exists)
            {
                if (completed == 1 && selected == false)
                {
                    oGlobal.canCount = true;
                    audio_play_sound(sndSelect, 0, false, 1, 0, 2);
                    instance_create_depth(0, 0, -999999999, oTransition);
                    oTransition.targetRoom = nLoading;
                    selected = true;
                }
            }
            else if (completed == 1 && selected == false)
            {
                audio_play_sound(sndSelect, 0, false, 1, 0, 2);
                instance_create_layer(x, y, "Instances", oSaveSlots);
                instance_deactivate_object(self);
                instance_deactivate_object(oTitle);
                selected = true;
            }
        }
    }
}

if (menuSelected == 2)
{
    for (var i = 0; i < total_slots; i++)
    {
        var file = "akumu" + string(i) + ".ini";
        image_index = file_exists(file) ? 6 : 2;
    }
    
    if (keyboard_check_pressed(ord("Z")) || (keyboard_check_pressed(vk_enter) && selected == false))
    {
        if (completed == 1 && selected == false)
        {
            audio_play_sound(sndSelect, 0, false, 1, 0, 2);
            instance_create_depth(0, 0, -999999999, oTransition);
            oTransition.targetRoom = rSettings;
            oPlayer.x = -35;
            oPlayer.y = -7;
            oPlayer.face = 3;
            selected = true;
        }
    }
}

if (menuSelected == 3)
{
    for (var i = 0; i < total_slots; i++)
    {
        var file = "akumu" + string(i) + ".ini";
        image_index = file_exists(file) ? 7 : 3;
    }
    
    if (keyboard_check_pressed(ord("Z")) || (keyboard_check_pressed(vk_enter) && selected == false))
    {
        if (completed == 1 && selected == false)
        {
            audio_play_sound(sndCancel, 0, false, 1, 0, 2);
            quit = true;
            Delay(1000, function()
            {
                game_end();
            });
        }
    }
}

if (global.any_save_exists)
    image_index += 4;
