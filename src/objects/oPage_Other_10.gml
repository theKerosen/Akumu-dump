count++;

if (count == 100)
{
    OpenTextBox("IT'S ALL YOUR FAULT.");
    oPlayer.state = 1;
    oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
}
else
{
    OpenTextBox("Don't forget.", "5. That's the third digit.", "The rest of the page seems to have been torn off.");
    oPlayer.state = 1;
    oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
}
