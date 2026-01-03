if (!canDraw)
{
    depth = -bbox_bottom;
    exit;
}
else
{
    depth = -999993;
}

if (bgImage >= 3 && screwlock == -4 && !global.screwUsed)
{
    bgImage = 3;
    bgImageSpeed = 0;
    global.screwUsed = true;
    audio_play_sound(sndFallDoor, 0, false);
}
