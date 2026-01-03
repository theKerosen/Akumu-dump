oPlayer.state = 5;
depth = -99993;
instance_create_layer(x, y, "Instances", oNotPause);
slot_count = 11;
scroll_offset = 0;
visible_slots = 3;
slot_selected = 0;
subImg = 0;
slot_names = ["Autosave", "Slot 1", "Slot 2", "Slot 3", "Slot 4", "Slot 5", "Slot 6", "Slot 7", "Slot 8", "Slot 9", "Slot 10"];
slot_exists = array_create(slot_count, false);

for (var i = 0; i < slot_count; i++)
{
    var fname = "akumu" + string(i) + ".ini";
    slot_exists[i] = file_exists(fname);
}

slot_width = sprite_get_width(sTextBox);
slot_height = sprite_get_height(sTextBox);
slot_spacing = 52;
slot_x = camera_get_view_x(view_camera[0]) + 33;
slot_y = camera_get_view_y(view_camera[0]) + 32;
