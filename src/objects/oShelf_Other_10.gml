if (speed != 0)
    exit;

OpenTextBox("An empty shelf.");
oPlayer.state = 1;
state = 1;
oTextBox.callback = [scrFinishCharacterReading, [oPlayer, oShelf]];
