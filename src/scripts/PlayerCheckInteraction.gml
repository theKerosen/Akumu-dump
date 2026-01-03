function scrPlayerCheckInteraction()
{
    var actionkey = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
    
    if (actionkey && global.gamePaused == false && !instance_exists(oPauser))
    {
        if (!global.gamePaused)
        {
            var interactive = GetFacingObject();
            
            if (interactive)
            {
                with (interactive)
                    event_user(0);
            }
        }
    }
}
