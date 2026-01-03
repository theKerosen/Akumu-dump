if (!global.crt)
    exit;

var surf_width = surface_get_width(application_surface);
var surf_height = surface_get_height(application_surface);
var spacing = 3;
var line_height = 1;
var num_lines = ceil(surf_height / spacing);

for (var i = 0; i < num_lines; i++)
    draw_sprite_ext(sScanLines, 0, 0, i * spacing, surf_width, line_height, 0, c_white, 1);
