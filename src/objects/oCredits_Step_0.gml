if (canDraw)
{
    y -= scroll_speed;
    
    if (y <= -text_height)
    {
        Delay(5000, function()
        {
            game_restart();
        });
    }
}
