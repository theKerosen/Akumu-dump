instance_destroy(oPlayer);
canDraw = true;

if (global.deathSound)
{
    global.deathSound = false;
    audio_play_sound(sndBlood, 0, false);
}

alarm[0] = 80;
canFade = false;
alpha = 1;
canTeleport = false;
fadeGo = false;
