show_debug_message(havingDialogue);

if (oPlayer.state == 5 && havingDialogue == 1 && state == 5)
{
    state = 0;
    Delay(3000, function()
    {
        OpenTextBox("I have to do this.");
        oTextBox.hasAudio = true;
        oTextBox.Speaker = "";
        oPlayer.state = 1;
        state = 1;
        havingDialogue++;
        oTextBox.callback = [myCallback, [oPlayer, self]];
    });
}
