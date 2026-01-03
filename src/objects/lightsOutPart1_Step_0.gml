var item = getItem(5, "healpizza");
var item2 = getItem(4, "hotpizza");
var item3 = getItem(3, "pizza");

if (lightsOut == 2 || global.lightsOut == 1)
{
    global.lightsOut = 1;
    oLightning.darkness = global.baseLight;
    instance_destroy();
}

if (lightsOut == 1)
{
    if (canPlay == false)
    {
        oLightning.darkness = 0.93;
        canPlay = true;
        audio_play_sound(sndLightsOut, 0, false);
    }
}

if (debounce == false)
{
    debounce = true;
    item = getItem(5, "healpizza");
    item2 = getItem(4, "hotpizza");
    item3 = getItem(3, "pizza");
    
    if (instance_exists(oBed) && (global.atepizza == false) ^^ (ds_list_find_index(oGlobal.inventory, item2) == -1) ^^ (ds_list_find_index(oGlobal.inventory, item3) == -1))
    {
        oBed.sprite_index = sBedSleep;
        oBed.image_speed = 0;
        oBed.image_index = 8;
        alarm[0] = 300;
    }
}

if (instance_exists(oPlayer) && debounce2 == false && (global.atepizza == false) ^^ (ds_list_find_index(oGlobal.inventory, item2) == -1) ^^ (ds_list_find_index(oGlobal.inventory, item3) == -1) && lightsOut == 0 && room == rBedroom)
{
    debounce2 = true;
    oPlayer.state = 5;
    alarm[2] = 50;
}

if (room == rBedroom)
{
    item = getItem(5, "healpizza");
    
    if (oBed.deitado == true && lightsOut == 0)
    {
        if (global.atepizza != false)
        {
            oBed.deitado = false;
            Delay(6000, function()
            {
                audio_play_sound(sndFlicker, 0, false);
                oLightning.darkness = 0.93;
                Delay(200, function()
                {
                    oLightning.darkness = global.baseLight;
                    Delay(100, function()
                    {
                        lightsOutPart1.lightsOut = 1;
                        Delay(50, function()
                        {
                            audio_stop_sound(sndFlicker);
                        });
                        Delay(2000, function()
                        {
                            oTextBox.hasAudio = true;
                            oTextBox.value = 20;
                            OpenTextBox("...");
                            Delay(2000, function()
                            {
                                oTextBox.pages = -4;
                                oTextBox.textOnDisplay = "";
                                Delay(2000, function()
                                {
                                    global.leave = 1;
                                });
                            });
                        });
                    });
                });
            });
        }
    }
}

if (room != rLivingRoom)
    exit;

if (!instance_exists(lightsOutPart1))
    exit;

if (instance_exists(oDoor))
{
    with (oDoor)
    {
        if (lightsOutPart1.lightsOut == 1)
        {
            item = getItem(6, "candle");
            
            if (ds_list_find_index(oGlobal.inventory, item) != -1 || ds_list_find_index(oPersistent.unlockedList, id) != -1)
            {
                lock = -4;
                
                if (ds_list_find_index(oPersistent.unlockedList, id) == -1)
                    ds_list_add(oPersistent.unlockedList, id);
            }
            else
            {
                lock = "velaepizza";
                myDialogue1 = "It's way too dark. I’ll need something to light the way.";
                myDialogue2 = undefined;
            }
        }
        else
        {
            lock = "velaepizza";
            myDialogue1 = "There's no reason to go down there.";
            myDialogue2 = undefined;
        }
    }
}
