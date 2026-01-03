var _page_x = camera_get_view_x(view_camera[0]) + 130;
var _page_y = camera_get_view_y(view_camera[0]) + 100;
draw_set_color(c_black);
draw_set_alpha(0.7);
draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), 800, 600, false);
draw_set_color(c_white);
draw_set_alpha(1);
draw_sprite(sPage, page, _page_x, _page_y);
var cursor_offset = 72;

if (page > 0)
{
    cursorImg += cursorSpeed;
    draw_sprite_ext(sCursorInv, cursorImg, _page_x - cursor_offset, _page_y, -1, 1, 0, c_white, 1);
}

if (page < global.maxPages)
{
    cursorImg += cursorSpeed;
    draw_sprite_ext(sCursorInv, cursorImg, _page_x + cursor_offset, _page_y, 1, 1, 0, c_white, 1);
}

if (oPlayer.state != 1)
    oPlayer.state = 5;
