function scrPlayerCheckReading()
{
    var actionkey = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
    
    if (actionkey)
    {
        with (oTextBox)
            event_user(0);
    }
}
