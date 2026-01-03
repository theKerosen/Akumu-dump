if (open == false)
{
    open = true;
    image_index = 1;
    audio_play_sound(sndCancel, 1, 0, 0.2);
    exit;
}
else if (open == true)
{
    if (instance_exists(lightsOutPart1))
    {
        item = getItem(itemId, itemTag);
        var item2 = getItem(4, "hotpizza");
        var item3 = getItem(5, "healpizza");
        
        if (global.atepizza != false || ds_list_find_index(oGlobal.inventory, item2) != -1 || ds_list_find_index(oGlobal.inventory, item) != -1)
        {
            open = false;
            image_index = 0;
            audio_play_sound(sndCancel, 1, 0, 0.2);
            exit;
        }
    }
    else
    {
        open = false;
        image_index = 0;
        audio_play_sound(sndCancel, 1, 0, 0.2);
        exit;
    }
}

if (!instance_exists(lightsOutPart1))
    exit;

var item = getItem(itemId, itemTag);

if (global.atepizza == false && ds_list_find_index(oGlobal.inventory, item) == -1 && open == true)
{
    myDialogue = "You got a pizza slice.";
    debounce = false;
    oPlayer.state = 5;
    audio_play_sound(sndSelect, 1, 0);
    audio_play_sound(sndCollect, 0, 0);
    addItem(itemId, quantity, itemTag);
}
