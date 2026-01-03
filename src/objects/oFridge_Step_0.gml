if (!instance_exists(lightsOutPart1))
    exit;

if (!audio_is_playing(sndCollect) && debounce == false)
{
    debounce = true;
    OpenTextBox("You got a cold pizza slice.", "You should probably heat it before eating.");
    oPlayer.state = 1;
    oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
    instance_destroy(oArrow);
    instance_create_layer(oMicrowave.x + 2.5, oMicrowave.y - 15, "Instances", oArrow);
}
