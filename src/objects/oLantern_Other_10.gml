var item = getItem(6, "candle");

if (canTake == true)
{
    if (ds_list_find_index(oGlobal.inventory, item) == -1)
    {
        debounce = false;
        oPlayer.state = 5;
        audio_play_sound(sndSelect, 1, 0);
        audio_play_sound(sndCollect, 0, 0);
        oUI.fuel = 50;
        oUI.decrease = false;
        addItem(itemId, quantity, itemTag);
    }
    else
    {
        debounce = true;
        audio_play_sound(sndSelect, 1, 0);
        audio_play_sound(sndCollect, 0, 0);
        oUI.fuel = 50;
        oUI.decrease = false;
        instance_destroy();
    }
}
else
{
    oTextBox.hasAudio = true;
    oTextBox.Speaker = "";
    OpenTextBox("Just a normal candle.", myDialogue2);
    oPlayer.state = 1;
    oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
}
