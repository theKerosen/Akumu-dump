function scrFinishCharacterReading_STOP(arg0, arg1)
{
    arg0.state = 5;
    oTextBox.Speaker = "";
    oTextBox.hasAudio = false;
    
    if (instance_exists(oPanel))
    {
        with (oPanel)
        {
            Delay(1000, function()
            {
                canDraw = true;
            });
        }
    }
    
    if (arg1 != -4)
        arg1.state = 5;
}
