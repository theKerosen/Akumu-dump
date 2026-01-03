if (image_alpha != 1)
    image_alpha += fadeSpeed;

completed = !instance_exists(oTransition);
selected = instance_exists(oTransition);

if (!selected)
{
    if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")))
    {
        optionsSelected += 1;
        audio_play_sound(sndMove, 0, false, 1.1, 0, 2);
    }
    
    if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")))
    {
        optionsSelected -= 1;
        audio_play_sound(sndMove, 0, false, 1.1, 0, 2);
    }
}

if (optionsSelected > 3)
    optionsSelected = 0;
else if (optionsSelected < 0)
    optionsSelected = 3;

var combination = (global.fullscreen * 1) + (global.crt * 2);
image_index = optionsSelected + (combination * 4);

if (optionsSelected == 0 && (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter)))
{
    if (completed && !selected)
    {
        if (window_get_fullscreen() == 1)
        {
            audio_play_sound(sndCancel, 0, false, 1, 0, 2);
            global.fullscreen = false;
        }
        else
        {
            audio_play_sound(sndSelect, 0, false, 1, 0, 2);
            global.fullscreen = true;
        }
        
        scrSaveConfig();
    }
}

if (optionsSelected == 2 && (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter)))
{
    if (completed && !selected)
    {
        audio_play_sound(sndSelect, 0, false, 1, 0, 2);
        instance_create_layer(x, y, "Instances", oSaveSlotsDelete);
        instance_deactivate_object(self);
        instance_deactivate_object(oTitle);
    }
}

if (optionsSelected == 1 && (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter)))
{
    if (completed && !selected)
    {
        audio_play_sound(sndSelect, 0, false, 1, 0, 2);
        global.crt = !global.crt;
        scrSaveConfig();
    }
}

if (optionsSelected == 3 && (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter)))
{
    if (completed && !selected)
    {
        audio_play_sound(sndCancel, 0, false, 1, 0, 2);
        
        if (!instance_exists(oTransition))
        {
            var inst = instance_create_depth(0, 0, -999999999, oTransition);
            inst.targetRoom = rMenu;
        }
        
        selected = true;
    }
}
