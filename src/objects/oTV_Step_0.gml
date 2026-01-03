if (turn && global.gamePaused)
    audio_pause_sound(sndStatic);
else if (audio_is_paused(sndStatic) && !global.gamePaused)
    audio_resume_sound(sndStatic);

if (!instance_exists(lightsOutPart1))
    exit;

if (global.canWatch == true)
{
    turn = true;
    sprite_index = sTV_On;
    audio_play_sound(sndStatic, 0, true);
    oCouch.depth = -999;
    global.canWatch = false;
    Delay(3000, function()
    {
        OpenTextBox("Staring at static isn't that entertaining.", "Maybe it's better if you just go to sleep.");
        oPlayer.state = 1;
        state = 1;
        oTextBox.callback = [myCallback, [oPlayer, oTV]];
    });
}
