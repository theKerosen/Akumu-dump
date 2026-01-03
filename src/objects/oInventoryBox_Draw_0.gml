if (!active)
    exit;

draw_set_color(c_black);
draw_set_alpha(0.7);
draw_rectangle(0, 0, 800, 600, false);
draw_set_font(global.TEXTBOX_FONT);
var _textbox_x = camera_get_view_x(view_camera[0]) + 20;
var _textbox_y = camera_get_view_y(view_camera[0]) + 39;
draw_set_color(c_white);
draw_set_alpha(1);
draw_sprite(sInventoryBox, 0, _textbox_x, _textbox_y);
draw_set_halign(fa_center);
draw_text(130, _textbox_y - 30, "Inventory");
draw_set_halign(fa_left);
var inventorySize = ds_list_size(oGlobal.inventory);
var i1 = max(cursor - 4, 0);

if ((i1 + 7) >= inventorySize)
    i1 = max(inventorySize - 7, 0);

var i2 = min(i1 + 7, inventorySize);
arrowImage += arrowImageSpeed;
var posy = 0;

for (var i = i1; i < i2; i++)
{
    var item = ds_list_find_value(oGlobal.inventory, i);
    var itemDef = global.ITEMS[item[0]];
    var itemTag = item[3];
    draw_sprite(itemDef[2], 0, _textbox_x + 10, _textbox_y + 6 + posy);
    draw_text(_textbox_x + 26, _textbox_y + 5 + posy, itemDef[0]);
    
    if (i == cursor)
        draw_sprite(sCursorInv, arrowImage, _textbox_x + 5, _textbox_y + 7 + posy);
    
    posy += 16.5;
}
