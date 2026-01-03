function scrUseScrew()
{
    var door = GetFacingObject();
    var inventorySize = ds_list_size(oGlobal.inventory);
    var cursorIndex = oInventoryBox.cursor;
    var item = ds_list_find_value(oGlobal.inventory, cursorIndex);
    var itemTag = array_get(item, 3);
    
    if (door != -4 && variable_instance_exists(door, "screwopen"))
    {
        oPlayer.state = 1;
        oTextBox.callback = [scrFinishCharacterReading_STOP, [oPlayer, -4]];
        
        if (door.screwlock == 10 && door.panelTag == itemTag)
        {
            door.screwlock = -4;
            OpenTextBox("You used the screwdriver.");
            audio_play_sound(sndUnlock, 0, false);
            show_debug_message("Screw used: " + string(itemTag));
            
            with (oPersistent)
                ds_list_add(foundList, door.id);
            
            removeItem(item, itemTag);
        }
        else if (door.screwlock != -4 && door.doorTag != itemTag)
        {
            oTextBox.hasAudio = true;
            OpenTextBox("It doesn't fit.");
            show_debug_message("Wrong key tag: " + string(itemTag));
        }
        else
        {
            OpenTextBox("Nothing happens.");
            show_debug_message("Unexpected state. Item tag: " + string(itemTag));
        }
    }
    
    return false;
}
