var min_slot = 0;
var max_slot = slot_count - 1;

if ((keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) && !instance_exists(oWarp) && !instance_exists(oTransition))
{
    slot_selected += 1;
    
    if (slot_selected > max_slot)
        slot_selected = min_slot;
    
    audio_play_sound(sndMove, 0, false, 1, 0, 2);
}

if ((keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) && !instance_exists(oWarp) && !instance_exists(oTransition))
{
    slot_selected -= 1;
    
    if (slot_selected < min_slot)
        slot_selected = max_slot;
    
    audio_play_sound(sndMove, 0, false, 1, 0, 2);
}

if (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter))
{
    oGlobal.canCount = true;
    var save_file = "akumu" + string(slot_selected) + ".ini";
    
    if (file_exists(save_file))
    {
        audio_play_sound(sndHurt, 0, false);
        file_delete(save_file);
        show_debug_message("Save deletado: " + save_file);
    }
    else
    {
        audio_play_sound(sndWrong, 0, false);
    }
}

if (keyboard_check_pressed(ord("X")))
{
    audio_play_sound(sndCancel, 0, false, 1, 0, 2);
    instance_activate_object(oOptions);
    instance_activate_object(oTitle);
    instance_destroy();
}

if (slot_selected < scroll_offset)
    scroll_offset = slot_selected;
else if (slot_selected >= (scroll_offset + visible_slots))
    scroll_offset = (slot_selected - visible_slots) + 1;

for (var i = 0; i < slot_count; i++)
    slot_exists[i] = file_exists("akumu" + string(i) + ".ini");
