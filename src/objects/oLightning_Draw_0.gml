if (instance_exists(oPlayer))
{
    if (oPlayer.visible == false)
        exit;
}

if (surface_exists(dark_surf))
{
    surface_set_target(dark_surf);
    draw_clear(c_black);
    gpu_set_blendmode(bm_subtract);
    
    with (oPlayer)
    {
        var fuel_ratio = clamp(oUI.fuel / oUI.fuel_max, 0, 0.5);
        var min_scale = 0.5;
        var max_scale = 1;
        var base_scale = lerp(min_scale, max_scale, fuel_ratio);
        var scale = random_range(0.85 * base_scale, base_scale);
        draw_sprite_ext(sSmallGlow, 0, x, y - 12, 1, 1, 0, c_white, 0.2);
        
        if (itemequip == "candle")
            draw_sprite_ext(sGlow, 0, x, y - 12, scale, scale, 0, c_white, 0.2);
    }
    
    with (oPlayerGetUp)
    {
        switch (image_index)
        {
            case 0:
                upy = 3;
                break;
            
            case 1:
                upy = 5;
                break;
            
            case 2:
                upy = 6;
                break;
        }
        
        draw_sprite_ext(sSmallGlow, 0, x, y - upy, 1, 1, 0, c_white, 0.2);
    }
    
    with (oDaisy)
        draw_sprite_ext(sSmallGlow, 0, x, y - 12, 1, 1, 0, c_white, 0.2);
    
    with (oLantern)
    {
        var scale = random_range(0.19, 0.25);
        draw_sprite_ext(sSmallGlow, 0, x + 4.5, y + 2, scale, scale, 0, c_white, 0.2);
    }
    
    with (oLight)
    {
        if (light)
        {
            var min_scale = 0.5;
            var max_scale = 1;
            var base_scale = lerp(min_scale, max_scale, 1);
            var scale = random_range(0.85 * base_scale, base_scale);
            draw_sprite_ext(sSmallGlow, 0, x + 7, y + 7, 1, 1, 0, c_white, 0.2);
            draw_sprite_ext(sGlow, 0, x + 7, y + 7, scale, scale, 0, c_white, 0.2);
        }
    }
    
    with (oLight2)
    {
        if (light)
        {
            var min_scale = 0.5;
            var max_scale = 1;
            var base_scale = lerp(min_scale, max_scale, 1);
            var scale = random_range(0.85 * base_scale, base_scale);
            draw_sprite_ext(sSmallGlow, 0, x + 7, y + 7, 1, 1, 0, c_white, 0.2);
            draw_sprite_ext(sGlow, 0, x + 7, y + 7, scale, scale, 0, c_white, 0.2);
        }
    }
    
    with (oWindow)
        draw_sprite_ext(sGlow, 0, x + 16, y + 12, 0.7, 0.7, 0, c_white, 0.2);
    
    with (oPicture1)
        draw_sprite_ext(sSmallGlow, 0, x + 10, y + 10, 0.7, 0.7, 0, c_white, 0.2);
    
    with (oPicture3)
        draw_sprite_ext(sSmallGlow, 0, x + 10, y + 10, 0.7, 0.7, 0, c_white, 0.2);
    
    with (oPicture4)
        draw_sprite_ext(sSmallGlow, 0, x + 10, y + 10, 0.7, 0.7, 0, c_white, 0.2);
    
    with (oNotes)
        draw_sprite_ext(sSmallGlow, 0, x + 4, y + 6, 0.4, 0.4, 0, c_white, 0.2);
    
    with (oSpark)
    {
        if (image_index >= 4)
            draw_sprite_ext(sSmallGlow, 0, x, y, 0.2, 0.2, 0, c_white, 0.2);
        else
            draw_sprite_ext(sSmallGlow, 0, x, y, 0.4, 0.4, 0, c_white, 0.2);
    }
    
    with (oToolBox)
        draw_sprite_ext(sSmallGlow, 0, x + 6, y + 5, 0.7, 0.7, 0, c_white, 0.2);
    
    with (oWitchBook)
    {
        if (visible && sprite_index == sBook)
            draw_sprite_ext(sSmallGlow, 0, x + 7, y + 3, 0.4, 0.4, 0, c_white, 0.2);
    }
    
    with (oKey)
        draw_sprite_ext(sSmallGlow, 0, x + 6, y + 3, 0.4, 0.4, 0, c_white, 0.2);
    
    with (oPlayerHanged)
        draw_sprite_ext(sSmallGlow, 0, x, y - 12, 1, 1, 0, c_white, 0.2);
    
    with (oPage)
        draw_sprite_ext(sSmallGlow, 0, x + 3, y + 3, 0.4, 0.4, 0, c_white, 0.2);
    
    with (oKnife)
        draw_sprite_ext(sSmallGlow, 0, x + 4, y + 6, 0.4, 0.4, 0, c_white, 0.2);
    
    with (oLightball)
        draw_sprite_ext(sSmallGlow, 0, x, y, 1, 1, 0, c_white, 0.2);
    
    with (oTV)
    {
        if (turn)
            draw_sprite_ext(sSmallGlow, 0, x + 16, y + 10, 1, 1, 0, c_white, 0.2);
    }
    
    with (oPlayerCutsceneRun)
        draw_sprite_ext(sSmallGlow, 0, x, y, 1, 1, 0, c_white, 0.2);
    
    with (oPlayerCutsceneGetUp)
        draw_sprite_ext(sSmallGlow, 0, x, y - 8, 1, 1, 0, c_white, 0.2);
    
    gpu_set_blendmode(bm_normal);
    surface_reset_target();
    draw_surface_ext(dark_surf, 0, 0, 1, 1, 0, c_white, darkness);
}
else
{
    dark_surf = surface_create(room_width, room_height);
}

if (surface_exists(light_surf))
{
    surface_set_target(light_surf);
    draw_clear(c_black);
    
    with (oPlayer)
    {
        var fuel_ratio = clamp(oUI.fuel / oUI.fuel_max, 0, 1);
        var min_scale = 0.5;
        var max_scale = 1;
        var base_scale = lerp(min_scale, max_scale, fuel_ratio);
        var scale = random_range(0.85 * base_scale, base_scale);
        gpu_set_blendmode(bm_normal);
        draw_sprite_ext(sSmallGlow, 0, x, y - 12, 1, 1, 0, c_white, 0.1);
        
        if (itemequip == "candle")
        {
            gpu_set_blendmode(bm_normal);
            draw_sprite_ext(sGlow, 0, x, y - 12, scale, scale, 0, c_white, 0.1);
        }
    }
    
    with (oPlayerGetUp)
    {
        switch (image_index)
        {
            case 0:
                upy = 3;
                break;
            
            case 1:
                upy = 5;
                break;
            
            case 2:
                upy = 6;
                break;
        }
        
        gpu_set_blendmode(bm_normal);
        draw_sprite_ext(sSmallGlow, 0, x, y - upy, 1, 1, 0, c_white, 0.1);
    }
    
    with (oDaisy)
    {
        gpu_set_blendmode(bm_normal);
        draw_sprite_ext(sSmallGlow, 0, x, y - 12, 1, 1, 0, c_white, 0.1);
    }
    
    with (oLantern)
    {
        var scale = random_range(0.19, 0.25);
        gpu_set_blendmode(bm_normal);
        draw_sprite_ext(sSmallGlow, 0, x + 4.5, y + 2, scale, scale, 0, c_white, 0.1);
    }
    
    with (oLight)
    {
        if (light)
        {
            var min_scale = 0.5;
            var max_scale = 1;
            var base_scale = lerp(min_scale, max_scale, 1);
            var scale = random_range(0.85 * base_scale, base_scale);
            gpu_set_blendmode(bm_normal);
            draw_sprite_ext(sSmallGlow, 0, x + 7, y + 7, 1, 1, 0, c_white, 0.1);
            gpu_set_blendmode(bm_normal);
            draw_sprite_ext(sGlow, 0, x + 7, y + 7, scale, scale, 0, c_white, 0.1);
        }
    }
    
    with (oLight2)
    {
        if (light)
        {
            var min_scale = 0.5;
            var max_scale = 1;
            var base_scale = lerp(min_scale, max_scale, 1);
            var scale = random_range(0.85 * base_scale, base_scale);
            gpu_set_blendmode(bm_normal);
            draw_sprite_ext(sGlow, 0, x + 7, y + 7, scale, scale, 0, c_white, 0.1);
        }
    }
    
    with (oWindow)
    {
        gpu_set_blendmode(bm_normal);
        draw_sprite_ext(sGlow, 0, x + 16, y + 12, 0.7, 0.7, 0, c_white, 0.1);
    }
    
    with (oPicture1)
    {
        gpu_set_blendmode(bm_normal);
        draw_sprite_ext(sSmallGlow, 0, x + 10, y + 10, 0.7, 0.7, 0, c_white, 0.1);
    }
    
    with (oPicture3)
    {
        gpu_set_blendmode(bm_normal);
        draw_sprite_ext(sSmallGlow, 0, x + 10, y + 10, 0.7, 0.7, 0, c_white, 0.1);
    }
    
    with (oPicture4)
    {
        gpu_set_blendmode(bm_normal);
        draw_sprite_ext(sSmallGlow, 0, x + 10, y + 10, 0.7, 0.7, 0, c_white, 0.1);
    }
    
    with (oNotes)
    {
        gpu_set_blendmode(bm_normal);
        draw_sprite_ext(sSmallGlow, 0, x + 4, y + 6, 0.4, 0.4, 0, c_white, 0.1);
    }
    
    with (oSpark)
    {
        gpu_set_blendmode(bm_normal);
        
        if (image_index >= 4)
            draw_sprite_ext(sSmallGlow, 0, x, y, 0.2, 0.2, 0, c_white, 0.1);
        else
            draw_sprite_ext(sSmallGlow, 0, x, y, 0.4, 0.4, 0, c_white, 0.1);
    }
    
    with (oToolBox)
    {
        gpu_set_blendmode(bm_normal);
        draw_sprite_ext(sSmallGlow, 0, x + 6, y + 5, 0.7, 0.7, 0, c_white, 0.1);
    }
    
    with (oWitchBook)
    {
        if (visible && sprite_index == sBook)
        {
            gpu_set_blendmode(bm_normal);
            draw_sprite_ext(sSmallGlow, 0, x + 7, y + 3, 0.4, 0.4, 0, c_white, 0.1);
        }
    }
    
    with (oKey)
    {
        gpu_set_blendmode(bm_normal);
        draw_sprite_ext(sSmallGlow, 0, x + 6, y + 3, 0.4, 0.4, 0, c_white, 0.1);
    }
    
    with (oPlayerHanged)
    {
        gpu_set_blendmode(bm_normal);
        draw_sprite_ext(sSmallGlow, 0, x, y - 12, 1, 1, 0, c_white, 0.1);
    }
    
    with (oPage)
    {
        gpu_set_blendmode(bm_normal);
        draw_sprite_ext(sSmallGlow, 0, x + 3, y + 3, 0.4, 0.4, 0, c_white, 0.1);
    }
    
    with (oKnife)
    {
        gpu_set_blendmode(bm_normal);
        draw_sprite_ext(sSmallGlow, 0, x + 6, y + 4, 0.4, 0.4, 0, c_white, 0.1);
    }
    
    with (oLightball)
    {
        gpu_set_blendmode(bm_normal);
        draw_sprite_ext(sSmallGlow, 0, x, y, 1, 1, 0, c_white, 0.1);
    }
    
    with (oTV)
    {
        if (turn)
        {
            gpu_set_blendmode(bm_normal);
            draw_sprite_ext(sSmallGlow, 0, x + 16, y + 10, 1, 1, 0, c_white, 0.1);
        }
    }
    
    with (oPlayerCutsceneRun)
    {
        gpu_set_blendmode(bm_normal);
        draw_sprite_ext(sSmallGlow, 0, x, y, 1, 1, 0, c_white, 0.1);
    }
    
    with (oPlayerCutsceneGetUp)
    {
        gpu_set_blendmode(bm_normal);
        draw_sprite_ext(sSmallGlow, 0, x, y - 8, 1, 1, 0, c_white, 0.1);
    }
    
    gpu_set_blendmode(bm_add);
    surface_reset_target();
    draw_surface_ext(light_surf, 0, 0, 1, 1, 0, c_white, 1);
    gpu_set_blendmode(bm_normal);
}
else
{
    light_surf = surface_create(room_width, room_height);
}
