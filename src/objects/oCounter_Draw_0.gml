draw_self();

if (!canDraw)
    exit;

if (oPlayer.state == 0)
{
    image_index = 0;
    oPlayer.state = 5;
    Delay(5000, function()
    {
        global.atepizza = true;
        global.canWatch = true;
        oPlayer.x = 72;
        oPlayer.y = 119;
        oPlayer.face = 1;
        oPlayer.visible = true;
        audio_resume_sound(sndRain);
        room_goto(rLivingRoom);
    });
}

oPlayer.visible = false;

if (drawing == "black")
    draw_rectangle_color(0, 0, 800, 600, c_black, c_black, c_black, c_black, false);
else
    draw_sprite(sPizzaUI, 0, 0, 0);
