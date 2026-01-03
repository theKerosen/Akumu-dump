if (speed != 0)
    exit;

if (image_index != 0)
    exit;

OpenTextBox("Looks like there's no paper here.");
oPlayer.state = 1;
oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
