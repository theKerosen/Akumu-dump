function tb_rgb(arg0, arg1, arg2 = undefined)
{
    return is_undefined(arg2) ? max(abs(color_get_red(arg0) - color_get_red(arg1)), abs(color_get_green(arg0) - color_get_green(arg1)), abs(color_get_blue(arg0) - color_get_blue(arg1))) : merge_colour(arg0, arg1, arg2);
}

function tb_hsv(arg0, arg1, arg2 = undefined)
{
    var _hd0 = floor((color_get_hue(arg0) * 360) / 256);
    var _hd1 = floor((color_get_hue(arg1) * 360) / 256);
    var _s0 = color_get_saturation(arg0);
    var _s1 = color_get_saturation(arg1);
    var _v0 = color_get_value(arg0);
    var _v1 = color_get_value(arg1);
    var _ad = angle_difference(_hd1, _hd0);
    
    if (is_undefined(arg2))
        return max(abs(ceil((_ad * 256) / 360)), abs(_s1 - _s0), abs(_v1 - _v0));
    
    var _na = _hd0 + (_ad * arg2);
    return make_color_hsv(round((((_na < 0) ? (_na + 360) : ((_na >= 360) ? (_na - 360) : _na)) * 256) / 360), round(lerp(_s0, _s1, arg2)), round(lerp(_v0, _v1, arg2)));
}

function tb_angle(arg0, arg1, arg2 = undefined)
{
    var _ad = angle_difference(arg1, arg0);
    
    if (is_undefined(arg2))
        return abs(_ad);
    
    var _na = arg0 + (_ad * arg2);
    return (_na < 0) ? (_na + 360) : ((_na >= 360) ? (_na - 360) : _na);
}

function tb_vector(arg0, arg1, arg2 = undefined)
{
    var _vdim = array_length(arg0);
    
    if (is_undefined(arg2))
    {
        var _vsum = 0;
        i = _vdim - 1;
        
        while (i >= 0)
        {
            _vsum += sqr(arg0[i] - arg1[i]);
            i--;
        }
        
        return sqrt(_vsum);
    }
    
    var _vout = array_create(_vdim);
    var i = _vdim - 1;
    
    while (i >= 0)
    {
        _vout[i] = lerp(arg0[i], arg1[i], arg2);
        i--;
    }
    
    return _vout;
}
