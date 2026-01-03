function scrUseFakeBook()
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
                global.switchBooks = true;
                visible = true;
                sprite_index = sFakeBook;
                audio_play_sound(sndPut, 0, false);
                instance_destroy(oRitualDeath);
                
                with (oPersistent)
                    ds_list_delete(foundList, ds_list_find_index(foundList, other.id));
            }
            
            removeItem(item, itemTag);
        }
    }
    else
    {
        oTextBox.hasAudio = true;
        OpenTextBox("Just a bunch of random words.", "Doesn't seem useful.");
        oPlayer.state = 1;
        oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
    }
    
    return false;
}
