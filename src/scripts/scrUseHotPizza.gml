function scrUseHotPizza()
{
    var counter = GetFacingObject();
    var inventorySize = ds_list_size(oGlobal.inventory);
    var cursorIndex = oInventoryBox.cursor;
    var item = ds_list_find_value(oGlobal.inventory, cursorIndex);
    var itemTag = array_get(item, 3);
    
    if (variable_instance_exists(counter, "counter"))
    {
        if (oPlayer.face != 3)
            exit;
        
        with (oCounter)
        {
            removeItem(item, itemTag);
            instance_destroy(oArrow);
            var pizza = instance_create_layer(oPlayer.x - 6, 122, "Instances", oPizza);
            pizza.depth = -9999;
            audio_play_sound(sndPut, 0, false);
            oPlayer.state = 5;
            Delay(1500, function()
            {
                instance_destroy(oPizza);
                canDraw = true;
                drawing = "pizza";
                Delay(3000, function()
                {
                    drawing = "black";
                    audio_pause_sound(sndRain);
                    audio_stop_sound(sndWater);
                    Delay(1000, function()
                    {
                        OpenTextBox("You ate the pizza.", "It was delicious.");
                        oPlayer.state = 1;
                        oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
                    });
                });
            });
        }
    }
    
    return false;
}
