canDraw = true;
oPlayer.state = 5;
Delay(2000, function()
{
    canDraw = false;
    
    if (speed != 0)
        exit;
    
    if (global.debounce3 == false && global.basementpuzzlecomplete == false)
    {
        OpenTextBox("There is a hidden button behind the painting, want to press it?");
    }
    else if (global.debounce3 == true || global.basementpuzzlecomplete == true)
    {
        oTextBox.hasAudio = true;
        OpenTextBox("The button is locked in place.");
    }
    
    oPlayer.state = 1;
    state = 1;
    oTextBox.callback = [scrFinishCharacterReading, [oPlayer, oPicture1]];
});
