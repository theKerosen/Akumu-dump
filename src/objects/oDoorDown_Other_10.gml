if (lock != -4)
{
    audio_play_sound(sndLock, 0, 0, 0.5);
    oPlayer.state = 5;
    canPlay = true;
    exit;
}

if (doorOpening == false && oPlayer.state == 0 && global.gamePaused != true)
{
    audio_play_sound(sndDoor, 0, 0, 0.5);
    oPlayer.state = 5;
    doorOpening = true;
}
