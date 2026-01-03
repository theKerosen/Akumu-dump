function scrUsePizza()
{
    var microwave = GetFacingObject();
    var inventorySize = ds_list_size(oGlobal.inventory);
    var cursorIndex = oInventoryBox.cursor;
    var item = ds_list_find_value(oGlobal.inventory, cursorIndex);
    var itemTag = array_get(item, 3);
    
    if (variable_instance_exists(microwave, "microwave"))
    {
        oPlayer.state = 1;
        oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
        
        with (oMicrowave)
        {
            audio_play_sound(sndMicrowave, 0, false);
            oPlayer.state = 5;
            Delay(1120, function()
            {
                image_index = 1;
            });
            Delay(7740, function()
            {
                instance_destroy(oArrow);
                instance_create_layer(91, 106, "Instances", oArrow);
                image_index = 0;
                addItem(4, 1, "hotpizza");
                OpenTextBox("You got a pizza slice.");
                oPlayer.state = 1;
                oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
            });
        }
        
        removeItem(item, itemTag);
    }
    
    return false;
}
