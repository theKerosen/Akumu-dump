function scrFinishCharacterReading(arg0, arg1)
{
    arg0.state = 0;
    oTextBox.hasAudio = false;
    oTextBox.Speaker = "";
    
    if (arg1 != -4)
    {
        arg1.state = 0;
        
        if (instance_exists(oOption))
        {
            with (oOption)
                instance_destroy();
        }
        
        if (instance_exists(oNotes))
        {
            with (oNotes)
                debounce = false;
        }
        
        if (instance_exists(oBookshelf))
        {
            with (oBookshelf)
                debounce = false;
        }
    }
}
