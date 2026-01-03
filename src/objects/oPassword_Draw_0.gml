oPlayer.state = 5;
var x_start = camera_get_view_x(view_camera[0]) + 97;
var y_start = camera_get_view_y(view_camera[0]) + 50;
var spacing = 16;
arrowImage += arrowImageSpeed;
draw_sprite(designedSprite, bgImage, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));

if (global.unlockedCode)
{
    bgImage += bgImageSpeed;
    designedSprite = sPasscode;
    exit;
}

for (var i = 0; i < digit_count; i++)
{
    var str = string(input_digits[i]);
    draw_set_color(c_gray);
    
    if (i == digit_index)
    {
        draw_set_color(c_white);
        draw_sprite(sDialogueFinish, arrowImage, (x_start + (i * spacing)) - 1, y_start - 8);
    }
    
    draw_text(x_start + (i * spacing), y_start, str);
    draw_set_color(c_white);
}

if (code_status == 1)
{
    global.unlockedCode = true;
    audio_play_sound(sndGateOpening, 0, false);
}
else if (code_status == -1)
{
    oPlayer.state = 0;
    audio_play_sound(sndGateClosed, 0, 0, 0.5);
    instance_destroy();
}
