state = 5;
havingDialogue = 0;
set_song_ingame(sndRain, 0, 0);
audio_play_sound(sndSarahCrying, 0, true, 1.3);
audio_play_sound(sndBurn, 0, true, 0.8);
Delay(2000, function()
{
    audio_play_sound(sndThunder, 0, false);
});
Delay(5000, function()
{
    havingDialogue++;
    OpenTextBox("I'm sorry,");
    oTextBox.hasAudio = true;
    oTextBox.Speaker = "";
    oPlayer.state = 1;
    state = 1;
    oTextBox.callback = [scrFinishCharacterReading_STOP, [oPlayer, self]];
});

myCallback = function(arg0, arg1)
{
    arg0.state = 5;
    Delay(3000, function()
    {
        audio_stop_sound(sndSarahCrying);
        audio_play_sound(sndStab2, 0, false);
        Delay(10000, function()
        {
            game_restart();
        });
    });
};
