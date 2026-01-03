if (!audio_is_playing(sndCollect) && debounce == false)
{
    debounce = true;
    OpenTextBox("You got a candle.", myDialogue2);
    oPlayer.state = 1;
    oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
    instance_destroy();
}

if (image_index > 2)
    image_index = 0;
