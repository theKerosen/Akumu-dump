if (instance_exists(oPlayer) && oPlayer.itemequip == "candle")
{
    if (oPlayer.visible != true)
        exit;
    
    var _fuelbar_x = camera_get_view_x(view_camera[0]) + 183;
    var _fuelbar_y = camera_get_view_y(view_camera[0]) + 183;
    draw_sprite(sFuelBG, 0, _fuelbar_x, _fuelbar_y);
    draw_sprite_stretched(sFuelBar, 0, _fuelbar_x, _fuelbar_y, min((fuel / fuel_max) * fuelbar_width, fuelbar_width), fuelbar_height);
    draw_sprite(sFuel, 0, _fuelbar_x, _fuelbar_y);
    
    if (fuel == 0)
    {
        removeItem(6, "candle");
        audio_play_sound(sndCandleOff, 0, false);
        oPlayer.itemequip = "";
    }
    
    if (!global.gamePaused && oPlayer.visible != false && oPlayer.state != 5)
    {
        burn_timer -= 1;
        
        if (burn_timer <= 0)
        {
            fuel -= 1;
            burn_timer = burn_interval;
        }
    }
}

if (global.gamePaused)
{
    var _textbox_x = camera_get_view_x(view_camera[0]);
    var _textbox_y = camera_get_view_y(view_camera[0]);
    draw_set_color(c_black);
    draw_set_alpha(0.7);
    draw_rectangle(_textbox_x, _textbox_y, 800, 600, false);
    draw_set_font(global.TEXTBOX_FONT);
    draw_set_color(c_white);
    draw_set_alpha(1);
    draw_set_halign(fa_center);
    draw_text(_textbox_x + 130, _textbox_y + 9, "Paused");
    arrowImage += arrowImageSpeed;
    var posy = 0;
    
    for (var i = 0; i < array_length(pauseOption); i++)
    {
        if (i == pauseOptionSelected)
        {
            var text_width = string_width(pauseOption[i]);
            draw_sprite(sCursorInv, arrowImage, (_textbox_x + 120) - (text_width / 2), _textbox_y + 86 + posy);
        }
        else
        {
            draw_set_alpha(0.6);
        }
        
        draw_set_halign(fa_center);
        draw_set_color(c_white);
        draw_text(_textbox_x + 130, _textbox_y + 85 + (i * 15), pauseOption[i]);
        draw_set_alpha(1);
        posy += 15;
    }
}
else
{
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
