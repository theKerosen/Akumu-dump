if (canPlay == true)
{
    if (!audio_is_playing(sndLock))
    {
        if (speed != 0)
            exit;
        
        oTextBox.textSide = 6;
        OpenTextBox("It won't open.");
        oPlayer.state = 1;
        state = 1;
        oTextBox.callback = [scrFinishCharacterReading, [oPlayer, oDoorL]];
        canPlay = false;
        cutscene = true;
    }
}

if (!audio_is_playing(sndHang) && canHang)
{
    canHang = false;
    audio_play_sound(sndHang2, 0, false);
    Delay(2000, function()
    {
        canDraw = false;
        instance_create_layer(storeX, storeY, "Instances", oPlayerHanged);
    });
}

if (!instance_exists(oPlayer))
    exit;

if (oPlayer.state == 0 && cutscene)
{
    if (!instance_exists(oPlayer))
        exit;
    
    if (instance_exists(oLantern))
    {
        audio_play_sound(sndCandleOff, 0, false);
        instance_destroy(oLantern);
        oPlayer.state = 0;
    }
}

if (cutscene && instance_exists(oPlayer))
{
    var dist = point_distance(x, y, oPlayer.x, oPlayer.y);
    
    if (dist > 70)
    {
        Delay(1000, function()
        {
            oTextBox.textSide = 7;
            oTextBox.hasAudio = true;
            OpenTextBox("What is happening?");
            Delay(1000, function()
            {
                oTextBox.pages = -4;
                oTextBox.textOnDisplay = "";
                canHang = true;
                audio_play_sound(sndHang, 0, false);
            });
        });
        storeX = oPlayer.x;
        storeY = oPlayer.y;
        cutscene = false;
        canDraw = true;
        instance_destroy(oPlayer);
    }
}
