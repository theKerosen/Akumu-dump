var _textbox_x = camera_get_view_x(view_camera[0]);
var _textbox_y = camera_get_view_y(view_camera[0]);
draw_set_font(global.TEXTBOX_FONT);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);
draw_set_alpha(0.7);
draw_rectangle(_textbox_x, _textbox_y, 800, 600, false);
draw_set_color(c_white);
draw_set_alpha(1);
var slots_total = array_length(slot_names);
draw_sprite(sTextSlot, 0, camera_get_view_x(view_camera[0]) + 33, camera_get_view_y(view_camera[0]) + 12);
draw_text(camera_get_view_x(view_camera[0]) + 43, camera_get_view_y(view_camera[0]) + 15, "Select a slot to delete.");

for (var i = 0; i < visible_slots; i++)
{
    var actual_index = i + scroll_offset;
    
    if (actual_index >= slots_total)
        break;
    
    var xx = slot_x;
    var yy = slot_y + (i * slot_spacing);
    
    if (actual_index == slot_selected)
    {
        draw_set_color(c_white);
        subImg = 0;
    }
    else
    {
        subImg = 1;
        draw_set_color(#505050);
    }
    
    draw_sprite(sSlot, subImg, xx, yy);
    var label = slot_names[actual_index];
    
    if (slot_exists[actual_index])
    {
        function cleanRoomName(arg0)
        {
            if (string_copy(arg0, 1, 1) == "r")
                arg0 = string_delete(arg0, 1, 1);
            
            var len = string_length(arg0);
            var last1 = string_copy(arg0, len, 1);
            var last2 = string_copy(arg0, len - 1, 2);
            
            if (string_digits(last2) == last2)
                arg0 = string_delete(arg0, len - 1, 2);
            else if (string_digits(last1) == last1)
                arg0 = string_delete(arg0, len, 1);
            
            return arg0;
        }
        
        var saveFile = "akumu" + string(actual_index) + ".ini";
        
        if (file_exists(saveFile))
        {
            ini_open(saveFile);
            var roomName = ini_read_string("map", "lvl", rBedroom);
            var cleanName = cleanRoomName(roomName);
            label += (" - " + cleanName);
            ini_close();
            
            function to2digits(arg0)
            {
                return (arg0 < 10) ? ("0" + string(arg0)) : string(arg0);
            }
            
            ini_open(saveFile);
            var h = ini_read_real("config", "h", 0);
            var m = ini_read_real("config", "m", 0);
            var s = ini_read_real("config", "s", 0);
            ini_close();
            var time_string = to2digits(h) + ":" + to2digits(m) + ":" + to2digits(floor(s));
            draw_text(xx + 10, yy + 32, time_string);
        }
    }
    else
    {
        label += " -";
    }
    
    draw_text(xx + 10, yy + 6, label);
    draw_set_color(c_white);
}
