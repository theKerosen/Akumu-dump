function scrPlayerUpdateInventory()
{
    if (keyboard_check_pressed(ord("C")))
    {
        scrCloseInventory();
        audio_play_sound(sndCancel, 0, false, 1, 0, 2);
    }
    
    var downkey = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
    var upkey = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
    
    if (oItemDef.item == -4)
    {
        var ver = downkey - upkey;
        
        if (ver != 0)
        {
            audio_play_sound(sndMove, 0, false, 1.1, 0, 2);
            oInventoryBox.cursor = clamp(oInventoryBox.cursor + ver, 0, ds_list_size(oGlobal.inventory) - 1);
        }
        
        if (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter))
        {
            if (ds_list_size(oGlobal.inventory) > 0)
            {
                audio_play_sound(sndSelect, 0, false, 1, 0, 2);
                oItemDef.item = ds_list_find_value(oGlobal.inventory, oInventoryBox.cursor);
                
                if (is_array(oItemDef.item))
                {
                    oItemDef.itemDef = global.ITEMS[oItemDef.item[0]];
                }
                else
                {
                    show_debug_message("O item selecionado não é válido.");
                    oItemDef.item = -4;
                }
            }
            else
            {
                show_debug_message("O inventário está vazio.");
            }
        }
    }
    else
    {
        if (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter))
        {
            audio_play_sound(sndSelect, 0, false, 1, 0, 2);
            var itemId = oItemDef.item[0];
            var itemTag = oItemDef.item[3];
            scrCloseInventory();
            useItem(itemId, itemTag);
        }
        
        if (keyboard_check_pressed(ord("X")))
        {
            audio_play_sound(sndCancel, 0, false, 1, 0, 2);
            oItemDef.item = -4;
            oItemDef.itemDef = -4;
        }
    }
}
