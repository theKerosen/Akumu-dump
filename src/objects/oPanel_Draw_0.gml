if (!canDraw)
{
    draw_self();
    exit;
}

oPlayer.state = 5;
draw_sprite(designedSprite, bgImage, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));

if (screwlock == -4 && !global.screwUsed)
{
    designedSprite = sPanelClose;
    Delay(2000, function()
    {
        designedSprite = sPanelOpening;
        
        if (!play)
        {
            play = true;
            audio_play_sound(sndScrewopen, 0, false);
        }
        
        Delay(500, function()
        {
            image_index = 1;
            bgImage += bgImageSpeed;
            exit;
        });
    });
}
else
{
    Delay(1000, function()
    {
        var leave = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_enter);
        
        if (leave && canDraw)
        {
            canEnter = false;
            canDraw = false;
            oPlayer.state = 0;
            Delay(100, function()
            {
                instance_destroy(oNotPause);
            });
            Delay(1000, function()
            {
                canEnter = true;
            });
        }
    });
}
