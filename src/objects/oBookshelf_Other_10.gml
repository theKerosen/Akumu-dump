if (speed != 0)
    exit;

if (instance_exists(oPlayer))
{
    if (oPlayer.face != 1)
        exit;
}

OpenTextBox(inicialDialogue);
oPlayer.state = 1;
state = 1;
oTextBox.callback = [scrFinishCharacterReading, [oPlayer, oBookshelf]];
