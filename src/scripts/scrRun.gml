function scrRun()
{
    if (key_run)
    {
        if (instance_exists(ocantRun))
            exit;
        
        if (hsp != 0 || vsp != 0)
        {
            running = true;
            
            if (hsp != 0 && vsp != 0)
                spd = rundiagSpd;
            else
                spd = runspd;
        }
    }
    else if ((running == true && hsp == 0) || vsp == 0)
    {
        spd = 1;
        running = false;
    }
}
