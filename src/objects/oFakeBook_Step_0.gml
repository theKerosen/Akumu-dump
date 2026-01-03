if (!audio_is_playing(sndKey) && debounce == false)
{
    debounce = true;
    OpenTextBox("You found a book.");
    oPlayer.state = 1;
    oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
    
    with (oPersistent)
        ds_list_add(foundList, other.id);
    
    visible = false;
}

depth = -bbox_bottom;
