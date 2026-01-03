if (!surface_exists(light_surf) && !surface_exists(dark_surf))
    exit;

surface_resize(light_surf, room_width, room_height);
surface_resize(dark_surf, room_width, room_height);
