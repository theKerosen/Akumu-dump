if (global.switchBooks)
{
    OpenTextBox("It's stuck now.");
    oPlayer.state = 1;
    oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
}
else
{
    var item = getItem(9, "fakebook");
    
    if (sprite_index == sBook && visible == true)
    {
        var ritual = instance_create_layer(112, 49, "Instances", oRitualDeath);
        ritual.image_xscale = 2;
        debounce = false;
        oPlayer.state = 5;
        audio_play_sound(sndSelect, 1, 0);
        audio_play_sound(sndCollect, 0, 0);
        addItem(itemId, quantity, itemTag);
    }
}
