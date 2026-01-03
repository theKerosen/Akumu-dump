if (item == -4)
    exit;

var _textbox_x = camera_get_view_x(view_camera[0]) + 136;
var _textbox_y = camera_get_view_y(view_camera[0]) + 39;
draw_sprite(sItemDef, 0, _textbox_x, _textbox_y);
draw_set_font(global.TEXTBOX_FONT);
draw_sprite(itemDef[2], 0, _textbox_x + 6, _textbox_y + 6);
draw_text(_textbox_x + 20, _textbox_y + 5, itemDef[0]);
draw_text_ext(_textbox_x + 6, _textbox_y + 26, itemDef[1], 10, 100);
