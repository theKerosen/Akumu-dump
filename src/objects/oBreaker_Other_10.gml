if (speed != 0)
    exit;

if (off)
    OpenTextBox("The power is currently off. Want to turn it on?");
else
    OpenTextBox("The power is already on.");

oPlayer.state = 1;
state = 1;
oTextBox.callback = [scrFinishCharacterReading, [oPlayer, oBreaker]];
