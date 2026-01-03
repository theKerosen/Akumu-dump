if (pages == -4)
    exit;

var _textbox_x, _textbox_y;

if (textSide == 7)
{
    _textbox_x = camera_get_view_x(view_camera[0]) + 32;
    _textbox_y = camera_get_view_y(view_camera[0]) + 144;
}
else
{
    _textbox_x = camera_get_view_x(view_camera[0]) + 32;
    _textbox_y = camera_get_view_y(view_camera[0]) + 4;
}

textImage += textImageSpeed;
draw_sprite(sTextBox, textImage, _textbox_x, _textbox_y);
arrowImage += arrowImageSpeed;

if (textSide == 7)
{
    if (textOnDisplay == pages[page])
    {
        canSkip = true;
        draw_sprite(sDialogueFinish, arrowImage, camera_get_view_x(view_camera[0]) + 214, camera_get_view_y(view_camera[0]) + 185);
        global.textComplete = true;
    }
}
else if (textOnDisplay == pages[page])
{
    canSkip = true;
    draw_sprite(sDialogueFinish, arrowImage, camera_get_view_x(view_camera[0]) + 214, camera_get_view_y(view_camera[0]) + 45);
    global.textComplete = true;
}

draw_set_font(global.TEXTBOX_FONT);
draw_text_ext(_textbox_x + 8, _textbox_y + 4, textOnDisplay, 14, 177);
