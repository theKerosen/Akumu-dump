if (oPlayer.face != 1)
    exit;

if (locked)
{
    audio_play_sound(sndGateClosed, 0, 0, 0.5);
    oPlayer.state = 5;
    canPlay = true;
    exit;
}

if (!canEnter)
    exit;

lockerClosing = true;
global.isHiding = true;
lockerOpening = false;
lockerAnim = 0;
canEnter = false;
entering = true;
play = false;
audio_pause_sound(oOST.songAsset);
audio_play_sound(sndLockerEnter, 0, false);
storedY = oPlayer.y;
oPlayer.y = -32;
Delay(1000, function()
{
    canPress = true;
});
oPlayer.state = 5;
