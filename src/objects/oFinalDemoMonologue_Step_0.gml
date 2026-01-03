if (room == rBasement20)
{
    show_debug_message(havingDialogue);
    
    if (oPlayer.state == 5 && havingDialogue == 1 && state == 5)
    {
        state = 0;
        Delay(2000, function()
        {
            OpenTextBox("It's foolish of me to expect a different answer.", "Yet, somehow,", "I still do.");
            oTextBox.hasAudio = true;
            oTextBox.Speaker = "Dad";
            oPlayer.state = 1;
            state = 1;
            havingDialogue++;
            oTextBox.callback = [scrFinishCharacterReading_STOP, [oPlayer, self]];
        });
    }
    
    if (oPlayer.state == 5 && havingDialogue == 2 && state == 5)
    {
        state = 0;
        Delay(200, function()
        {
            havingDialogue++;
            OpenTextBox("What are you talking about?");
            oTextBox.hasAudio = true;
            oTextBox.Speaker = "";
            Delay(2000, function()
            {
                oTextBox.pages = -4;
                oTextBox.textOnDisplay = "";
                OpenTextBox("It hurts, you know?", "We could have been happy.");
                oTextBox.hasAudio = true;
                oTextBox.Speaker = "Dad";
                oPlayer.state = 1;
                state = 1;
                oTextBox.callback = [myCallback, [oPlayer, self]];
            });
        });
    }
}

if (room == rBasement21)
{
    var item = getItem(8, "witchbook");
    
    if (ds_list_find_index(oGlobal.inventory, item) != -1)
    {
        if (oPlayer.state == 5 && state == 5)
        {
            state = 0;
            Delay(1000, function()
            {
                OpenTextBox("It’s the only thing you can do anyway.");
                oTextBox.hasAudio = true;
                oTextBox.Speaker = "Dad";
                oPlayer.state = 1;
                oTextBox.callback = [myCallback2, [oPlayer, -4]];
            });
        }
    }
}
