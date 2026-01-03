state = 5;
havingDialogue = 0;
set_song_ingame(sndCreditsSlowed, 0, 0);

if (room == rBasement20)
{
    Delay(1000, function()
    {
        havingDialogue++;
        OpenTextBox("Lily, you actually plan on doing it again?", "You just never seem to give up, do you?");
        oTextBox.hasAudio = true;
        oTextBox.Speaker = "Dad";
        oPlayer.state = 1;
        state = 1;
        oTextBox.callback = [scrFinishCharacterReading_STOP, [oPlayer, self]];
    });
    
    myCallback = function(arg0, arg1)
    {
        room_goto(rBasement19);
        arg0.state = 5;
    };
}

if (room == rBasement21)
{
    myCallback = function(arg0, arg1)
    {
        audio_play_sound(sndAppear, 0, false);
        arg0.state = 5;
        arg1.state = 5;
        var p = instance_create_layer(129, 100, "Instances", oPlayerCutsceneGetUp);
        var k = instance_create_layer(124, p.y + 30, "Instances", oKnife);
        k.itemId = 2;
        k.itemTag = "knife";
        k.quantity = 1;
    };
    
    myCallback2 = function(arg0, arg1)
    {
        arg0.state = 5;
        
        with (oPlayerCutsceneGetUp)
            canGetUp = true;
    };
    
    var item = getItem(8, "witchbook");
    
    if (ds_list_find_index(oGlobal.inventory, item) != -1)
    {
        OpenTextBox("Go ahead, you know what you have to do.");
        oTextBox.hasAudio = true;
        oTextBox.Speaker = "Dad";
        oPlayer.state = 1;
        state = 1;
        oTextBox.callback = [myCallback, [oPlayer, self]];
    }
    else
    {
        audio_play_sound(sndAppear, 0, false);
        oPlayer.state = 5;
        state = 5;
        var p = instance_create_layer(129, 100, "Instances", oPlayerCutsceneGetUp);
        var k = instance_create_layer(124, p.y + 30, "Instances", oKnife);
        k.itemId = 2;
        k.itemTag = "knife";
        k.quantity = 1;
        Delay(1500, function()
        {
            with (oPlayerCutsceneGetUp)
                canGetUp = true;
        });
    }
}
