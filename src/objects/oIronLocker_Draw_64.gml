if (leaving)
{
    draw_sprite(sEnterLocker, enterImage, 0, 0);
    enterImage -= enterImageSpeed;
    lockerOpening = true;
    lockerClosing = false;
    lockerAnim = sprite_get_number(sprite_index) - 1;
    oPlayer.y = storedY;
    oPlayer.face = 3;
    
    if (enterImage <= 0)
    {
        leaving = false;
        oPlayer.state = 0;
        audio_resume_sound(oOST.songAsset);
        global.isHiding = false;
        Delay(1000, function()
        {
            canEnter = true;
            canPress = true;
        });
    }
}
else if (entering)
{
    draw_sprite(sEnterLocker, enterImage, 0, 0);
    enterImage += enterImageSpeed;
    
    if (enterImage >= 10)
    {
        entering = false;
        inside = true;
        canEnter = false;
        animImage = 0;
    }
}
else if (inside)
{
    if (!play)
    {
        play = true;
        audio_play_sound(sndBreath3, 0, true);
    }
    
    animImage += animImageSpeed;
    
    if (animImage >= sprite_get_number(sInsideLocker))
        animImage = 0;
    
    draw_sprite(sInsideLocker, animImage, 0, 0);
}
