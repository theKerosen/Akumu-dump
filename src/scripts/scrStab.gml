function scrStab()
{
    if (global.cantKill)
        exit;
    
    oPlayer.state = 5;
    Delay(1000, function()
    {
        set_song_ingame(-4, 0, 0);
        oPlayer.face = 3;
        Delay(4000, function()
        {
            hsp = 0;
            vsp = 0;
            oPlayer.spd = 1;
            oPlayer.state = 4;
            oPlayer.image_index = 0;
            oPlayer.face = 16;
        });
    });
}
