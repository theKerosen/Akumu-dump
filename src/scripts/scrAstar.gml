function scr_astar(arg0, arg1, arg2, arg3, arg4)
{
    var grid = argument0;
    var start = [argument1, argument2];
    var goal = [argument3, argument4];
    var cols = ds_grid_width(grid);
    var rows = ds_grid_height(grid);
    var open = ds_priority_create();
    var came_from = ds_map_create();
    var cost_so_far = ds_map_create();
    var start_key = string(start[0]) + "," + string(start[1]);
    ds_priority_add(open, start_key, 0);
    ds_map_add(came_from, start_key, "-1");
    ds_map_add(cost_so_far, start_key, 0);
    var found = false;
    
    while (!ds_priority_empty(open))
    {
        var current = ds_priority_delete_min(open);
        var cur_split = string_split(current, ",");
        var cx = real(cur_split[0]);
        var cy = real(cur_split[1]);
        
        if (cx == goal[0] && cy == goal[1])
        {
            found = true;
            break;
        }
        
        for (var dx = -1; dx <= 1; dx++)
        {
            for (var dy = -1; dy <= 1; dy++)
            {
                if ((dx == 0 && dy == 0) || (abs(dx) + abs(dy)) == 2)
                    continue;
                
                var nx = cx + dx;
                var ny = cy + dy;
                
                if (nx < 0 || ny < 0 || nx >= cols || ny >= rows)
                    continue;
                
                if (ds_grid_get(grid, nx, ny) != 0)
                    continue;
                
                var next_key = string(nx) + "," + string(ny);
                var new_cost = ds_map_find_value(cost_so_far, current) + 1;
                
                if (!ds_map_exists(cost_so_far, next_key) || new_cost < ds_map_find_value(cost_so_far, next_key))
                {
                    ds_map_replace(cost_so_far, next_key, new_cost);
                    var priority = new_cost + abs(goal[0] - nx) + abs(goal[1] - ny);
                    ds_priority_add(open, next_key, priority);
                    ds_map_replace(came_from, next_key, current);
                }
            }
        }
    }
    
    var path = array_create(0);
    
    if (found)
    {
        var current = string(goal[0]) + "," + string(goal[1]);
        
        while (current != start_key)
        {
            var split = string_split(current, ",");
            array_push(path, [real(split[0]), real(split[1])]);
            current = ds_map_find_value(came_from, current);
        }
        
        array_reverse(path);
    }
    
    ds_priority_destroy(open);
    ds_map_destroy(came_from);
    ds_map_destroy(cost_so_far);
    return path;
}
