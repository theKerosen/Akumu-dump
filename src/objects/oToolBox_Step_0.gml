if (state == 1 && debounce == 0)
    debounce = 1;

if (!instance_exists(oPlayer))
    exit;

if (oPlayer.state == 0 && debounce == 1)
{
    debounce = 2;
    oPlayer.state = 5;
    audio_play_sound(sndSelect, 1, 0);
    audio_play_sound(sndCollect, 0, 0);
    addItem(itemId, quantity, itemTag);
}

if (!audio_is_playing(sndCollect) && debounce == 2)
{
    debounce = 3;
    OpenTextBox("You found a " + name + ".");
    oPlayer.state = 1;
    oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
    itemId = -4;
    
    with (oPersistent)
        ds_list_add(foundList, other.id);
}
