function scrUseKnife()
{
    if (global.cantKill)
        exit;
    
    var inventorySize = ds_list_size(oGlobal.inventory);
    var cursorIndex = oInventoryBox.cursor;
    var item = ds_list_find_value(oGlobal.inventory, cursorIndex);
    var itemTag = array_get(item, 3);
    
    if (oPlayer.itemequip != itemTag)
    {
        oPlayer.itemequip = "";
        oPlayer.state = 5;
        Delay(1000, function()
        {
            set_song_ingame(-4, 0, 0);
            oPlayer.face = 3;
            Delay(4000, function()
            {
                oPlayer.state = 4;
                oPlayer.image_index = 0;
                oPlayer.face = 16;
                oPlayer.hsp = 0;
                oPlayer.vsp = 0;
                oPlayer.spd = 1;
            });
        });
    }
    
    show_debug_message("Item equipped: " + oPlayer.itemequip);
    return false;
}
