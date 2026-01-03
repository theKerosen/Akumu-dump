if (pages == -4 || array_length_1d(pages) == 0)
    exit;

if (textOnDisplay != pages[page])
{
    textOnDisplay = pages[page];
    exit;
}

page += 1;
textOnDisplay = "";
alarm[0] = value;

if (page >= array_length_1d(pages))
{
    pages = -4;
    
    if (callback != -4)
    {
        script_execute_ext(callback[0], callback[1]);
        callback = -4;
    }
    
    if (instance_exists(oOptionD))
    {
        with (oOptionD)
            instance_destroy();
    }
}
