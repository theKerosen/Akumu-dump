if (!global.unlockedCode)
{
    instance_create_layer(x, y, "Instances", oPassword);
}
else
{
    if (speed != 0)
        exit;
    
    OpenTextBox("Nothing happens...", "Looks like It has already done It's job.");
    oPlayer.state = 1;
    oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
}
