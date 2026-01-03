function scrUseKey()
{
    var door = GetFacingObject();
    var inventorySize = ds_list_size(oGlobal.inventory);
    var cursorIndex = oInventoryBox.cursor;
    var item = ds_list_find_value(oGlobal.inventory, cursorIndex);
    var itemTag = array_get(item, 3);
    
    if (door != -4 && variable_instance_exists(door, "lock"))
    {
        oPlayer.state = 1;
        oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
        
        if (door.lock == 0 && door.doorTag == itemTag)
        {
            door.lock = -4;
            
            with (oPersistent)
                ds_list_add(unlockedList, door.id);
            
            OpenTextBox("You unlocked the door.");
            audio_play_sound(sndUnlock, 0, false);
            show_debug_message("Key used: " + string(itemTag));
            removeItem(item, itemTag);
        }
        else if (door.lock != -4 && door.doorTag != itemTag)
        {
            oTextBox.hasAudio = true;
            OpenTextBox("The key doesn't fit.");
            show_debug_message("Wrong key tag: " + string(itemTag));
        }
        else
        {
            oTextBox.hasAudio = true;
            OpenTextBox("Nothing happens.");
            show_debug_message("Unexpected state. Item tag: " + string(itemTag));
        }
    }
    
    return false;
}
