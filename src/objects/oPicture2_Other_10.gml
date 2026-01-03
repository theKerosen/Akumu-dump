if (speed != 0)
    exit;

if (global.debounce2 == false)
    OpenTextBox("The one who did everything.");
else if (global.debounce2 == true)
    OpenTextBox("The button is locked in place.");

oPlayer.state = 1;
state = 1;
oTextBox.callback = [scrFinishCharacterReading, [oPlayer, oPicture2]];
