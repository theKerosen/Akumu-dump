function scrUseCandle()
{
    var inventorySize = ds_list_size(oGlobal.inventory);
    var cursorIndex = oInventoryBox.cursor;
    var item = ds_list_find_value(oGlobal.inventory, cursorIndex);
    var itemTag = array_get(item, 3);
    
    if (oUI.fuel != 0)
    {
        if (oPlayer.itemequip != itemTag)
        {
            with (oPlayer)
            {
                itemequip = itemTag;
                audio_play_sound(sndCandle, 0, false);
            }
        }
        else
        {
            with (oPlayer)
            {
                itemequip = "";
                audio_play_sound(sndCandleOff, 0, false);
            }
        }
    }
    else
    {
        if (speed != 0)
            exit;
        
        oTextBox.hasAudio = true;
        OpenTextBox("It's out.");
        oPlayer.state = 1;
        oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
    }
    
    show_debug_message(oPlayer.itemequip);
    return false;
}
