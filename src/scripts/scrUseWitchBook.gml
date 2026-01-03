function scrUseWitchBook()
{
    var book = GetFacingObject();
    var inventorySize = ds_list_size(oGlobal.inventory);
    var cursorIndex = oInventoryBox.cursor;
    var item = ds_list_find_value(oGlobal.inventory, cursorIndex);
    var itemTag = array_get(item, 3);
    
    if (variable_instance_exists(book, "witch"))
    {
        if (oWitchBook.visible == false)
        {
            with (oWitchBook)
            {
                visible = true;
                sprite_index = sBook;
                audio_play_sound(sndPut, 0, false);
                instance_destroy(oRitualDeath);
                
                with (oPersistent)
                    ds_list_delete(foundList, ds_list_find_index(foundList, other.id));
            }
            
            removeItem(item, itemTag);
        }
    }
    else if (room != rBasement14)
    {
        audio_play_sound(sndBookOpen, 0, false);
        instance_create_depth(x, y, -999993, oWitchbookLayout);
    }
    else
    {
        oTextBox.hasAudio = true;
        OpenTextBox("The fog makes it hard to read.", "I should get out of here first.");
        oPlayer.state = 1;
        oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
    }
    
    return false;
}
