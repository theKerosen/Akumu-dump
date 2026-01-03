if (!instance_exists(oPlayer))
    exit;

if (room == rBasement9 || room == rBasement10 || room == rBasement11 || room == rBasement12 || room == rBasement13 || room == rBasement14 || room == rBasement15 || room == rBasement16 || room == rBasement17 || room == rBasement18 || room == rBasement19 || room == rBasement20 || room == rBasement21)
{
}
else
{
    instance_destroy();
    show_debug_message("destroyed");
}

if (global.allCorrect)
{
    if (instance_exists(oMirror))
    {
        with (oMirror)
            image_index = 2;
    }
}

if (global.toiletCorrect && global.paperCorrect && global.sinkCorrect)
{
    if (!global.allCorrectDebounce)
    {
        global.allCorrectDebounce = true;
        canLights = true;
        oTextBox.textSide = 6;
        oTextBox.value = 20;
        OpenTextBox("...");
        oPlayer.state = 1;
        oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
    }
}

if (oPlayer.state == 0 && canLights)
{
    audio_play_sound(sndFlicker, 0, false);
    oPlayer.state = 5;
    canLights = false;
    canDraw = true;
    Delay(200, function()
    {
        canDraw = false;
        oLightning.darkness = 0.73;
        Delay(100, function()
        {
            canDraw = true;
            Delay(500, function()
            {
                oLightning.darkness = 0.73;
                global.allCorrect = true;
                canDraw = false;
                oPlayer.state = 0;
            });
        });
    });
}

if (global.allCorrect && global.screwUsed && global.switchBooks && !global.everythingCorrect)
    global.everythingCorrect = true;

if (global.unlockedCode || global.everythingCorrect)
{
    if (instance_exists(oSpawner))
        instance_destroy(oSpawner);
}
