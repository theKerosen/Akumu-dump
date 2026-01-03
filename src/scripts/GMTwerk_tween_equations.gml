function __te_bounce_kernel__(arg0, arg1, arg2)
{
    if (arg0 < 0.36363636363636365)
    {
        return (arg2 * (7.5625 * arg0 * arg0)) + arg1;
    }
    else if (arg0 < 0.7272727272727273)
    {
        arg0 -= 0.5454545454545454;
        return (arg2 * ((7.5625 * arg0 * arg0) + 0.75)) + arg1;
    }
    else if (arg0 < 0.9090909090909091)
    {
        arg0 -= 0.8181818181818182;
        return (arg2 * ((7.5625 * arg0 * arg0) + 0.9375)) + arg1;
    }
    else
    {
        arg0 -= 0.9545454545454546;
        return (arg2 * ((7.5625 * arg0 * arg0) + 0.984375)) + arg1;
    }
}

function te_back_in(arg0, arg1, arg2)
{
    var s = 1.70158;
    return ((arg1 - arg0) * arg2 * arg2 * (((s + 1) * arg2) - s)) + arg0;
}

function te_back_inout(arg0, arg1, arg2)
{
    var s = 2.5949095;
    arg2 /= 0.5;
    
    if (arg2 < 1)
    {
        return (((arg1 - arg0) / 2) * (arg2 * arg2 * (((s + 1) * arg2) - s))) + arg0;
    }
    else
    {
        arg2 -= 2;
        return (((arg1 - arg0) / 2) * ((arg2 * arg2 * (((s + 1) * arg2) + s)) + 2)) + arg0;
    }
}

function te_back_out(arg0, arg1, arg2)
{
    var s = 1.70158;
    arg2 -= 1;
    return ((arg1 - arg0) * ((arg2 * arg2 * (((s + 1) * arg2) + s)) + 1)) + arg0;
}

function te_bounce_in(arg0, arg1, arg2)
{
    var c = arg1 - arg0;
    return (c - __te_bounce_kernel__(1 - arg2, 0, c)) + arg0;
}

function te_bounce_inout(arg0, arg1, arg2)
{
    var c = arg1 - arg0;
    
    if (arg2 < 0.5)
        return te_bounce_in(arg0, arg0 + (c / 2), 2 * arg2);
    else
        return te_bounce_out(arg0 + (c / 2), arg0 + c, 2 * (arg2 - 0.5));
}

function te_bounce_out(arg0, arg1, arg2)
{
    return __te_bounce_kernel__(arg2, arg0, arg1 - arg0);
}

function te_circ_in(arg0, arg1, arg2)
{
    return ((arg0 - arg1) * (sqrt(1 - (arg2 * arg2)) - 1)) + arg0;
}

function te_circ_inout(arg0, arg1, arg2)
{
    arg2 /= 0.5;
    
    if (arg2 < 1)
    {
        return (((arg0 - arg1) / 2) * (sqrt(1 - (arg2 * arg2)) - 1)) + arg0;
    }
    else
    {
        arg2 -= 2;
        return (((arg1 - arg0) / 2) * (sqrt(1 - (arg2 * arg2)) + 1)) + arg0;
    }
}

function te_circ_out(arg0, arg1, arg2)
{
    arg2 -= 1;
    return ((arg1 - arg0) * sqrt(1 - (arg2 * arg2))) + arg0;
}

function te_cubic_in(arg0, arg1, arg2)
{
    return ((arg1 - arg0) * arg2 * arg2 * arg2) + arg0;
}

function te_cubic_inout(arg0, arg1, arg2)
{
    arg2 /= 0.5;
    
    if (arg2 < 1)
    {
        return (((arg1 - arg0) / 2) * arg2 * arg2 * arg2) + arg0;
    }
    else
    {
        arg2 -= 2;
        return (((arg1 - arg0) / 2) * ((arg2 * arg2 * arg2) + 2)) + arg0;
    }
}

function te_cubic_out(arg0, arg1, arg2)
{
    arg2 -= 1;
    return ((arg1 - arg0) * ((arg2 * arg2 * arg2) + 1)) + arg0;
}

function te_elastic_in(arg0, arg1, arg2)
{
    var c = arg1 - arg0;
    var s = 1.70158;
    
    if (arg2 == 0)
        return arg0;
    
    if (arg2 == 1)
        return arg0 + c;
    
    var p = 0.6;
    var a = c;
    
    if (a < abs(c))
    {
        a = c;
        s = p / 4;
    }
    else
    {
        s = (p / (2 * pi)) * arcsin(c / a);
    }
    
    arg2 -= 1;
    return -(a * power(2, 10 * arg2) * sin((((arg2 * 1) - s) * (2 * pi)) / p)) + arg0;
}

function te_elastic_inout(arg0, arg1, arg2)
{
    var c = arg1 - arg0;
    var s = 1.70158;
    arg2 /= 0.5;
    
    if (arg2 == 0)
        return arg0;
    
    if (arg2 == 2)
        return arg0 + c;
    
    var p = 0.8999999999999999;
    var a = c;
    
    if (a < abs(c))
    {
        a = c;
        s = p / 4;
    }
    else
    {
        s = (p / (2 * pi)) * arcsin(c / a);
    }
    
    arg2 -= 1;
    
    if (arg2 < 0)
        return (-0.5 * (a * power(2, 10 * arg2) * sin((((arg2 * 1) - s) * (2 * pi)) / p))) + arg0;
    else
        return (a * power(2, -10 * arg2) * sin((((arg2 * 1) - s) * (2 * pi)) / p) * 0.5) + c + arg0;
}

function te_elastic_out(arg0, arg1, arg2)
{
    var c = arg1 - arg0;
    var s = 1.70158;
    
    if (arg2 == 0)
        return arg0;
    
    if (arg2 == 1)
        return arg0 + c;
    
    var p = 0.6;
    var a = c;
    
    if (a < abs(c))
    {
        a = c;
        s = p / 4;
    }
    else
    {
        s = (p / (2 * pi)) * arcsin(c / a);
    }
    
    return (a * power(2, -10 * arg2) * sin((((arg2 * 1) - s) * (2 * pi)) / p)) + c + arg0;
}

function te_exp_in(arg0, arg1, arg2)
{
    if (arg2 == 0)
        return arg0;
    else
        return ((arg1 - arg0) * power(2, 10 * ((arg2 / 1) - 1))) + arg0;
}

function te_exp_inout(arg0, arg1, arg2)
{
    if (arg2 == 0)
        return arg0;
    
    if (arg2 == 1)
        return arg1;
    
    arg2 /= 0.5;
    
    if (arg2 < 1)
    {
        return (((arg1 - arg0) / 2) * power(2, 10 * (arg2 - 1))) + arg0;
    }
    else
    {
        arg2 -= 1;
        return (((arg1 - arg0) / 2) * (-power(2, -10 * arg2) + 2)) + arg0;
    }
}

function te_exp_out(arg0, arg1, arg2)
{
    if (arg2 == 1)
        return arg1;
    else
        return ((arg1 - arg0) * (-power(2, (-10 * arg2) / 1) + 1)) + arg0;
}

function te_linear(arg0, arg1, arg2)
{
    return lerp(arg0, arg1, arg2);
}

function te_quadratic_in(arg0, arg1, arg2)
{
    return ((arg1 - arg0) * arg2 * arg2) + arg0;
}

function te_quadratic_inout(arg0, arg1, arg2)
{
    arg2 /= 0.5;
    
    if (arg2 < 1)
    {
        return (((arg1 - arg0) / 2) * arg2 * arg2) + arg0;
    }
    else
    {
        arg2--;
        return (((arg0 - arg1) / 2) * ((arg2 * (arg2 - 2)) - 1)) + arg0;
    }
}

function te_quadratic_out(arg0, arg1, arg2)
{
    return ((arg0 - arg1) * arg2 * (arg2 - 2)) + arg0;
}

function te_quartic_in(arg0, arg1, arg2)
{
    return ((arg1 - arg0) * arg2 * arg2 * arg2 * arg2) + arg0;
}

function te_quartic_inout(arg0, arg1, arg2)
{
    arg2 /= 0.5;
    
    if (arg2 < 1)
    {
        return (((arg1 - arg0) / 2) * arg2 * arg2 * arg2 * arg2) + arg0;
    }
    else
    {
        arg2 -= 2;
        return (((arg0 - arg1) / 2) * ((arg2 * arg2 * arg2 * arg2) - 2)) + arg0;
    }
}

function te_quartic_out(arg0, arg1, arg2)
{
    arg2 -= 1;
    return ((arg0 - arg1) * ((arg2 * arg2 * arg2 * arg2) - 1)) + arg0;
}

function te_quintic_in(arg0, arg1, arg2)
{
    return ((arg1 - arg0) * arg2 * arg2 * arg2 * arg2 * arg2) + arg0;
}

function te_quintic_inout(arg0, arg1, arg2)
{
    arg2 /= 0.5;
    
    if (arg2 < 1)
    {
        return (((arg1 - arg0) / 2) * arg2 * arg2 * arg2 * arg2 * arg2) + arg0;
    }
    else
    {
        arg2 -= 2;
        return (((arg1 - arg0) / 2) * ((arg2 * arg2 * arg2 * arg2 * arg2) + 2)) + arg0;
    }
}

function te_quintic_out(arg0, arg1, arg2)
{
    arg2 -= 1;
    return ((arg1 - arg0) * ((arg2 * arg2 * arg2 * arg2 * arg2) + 1)) + arg0;
}

function te_sine_in(arg0, arg1, arg2)
{
    var c = arg1 - arg0;
    return (-c * cos((arg2 * pi) / 2)) + c + arg0;
}

function te_sine_inout(arg0, arg1, arg2)
{
    return (((arg0 - arg1) / 2) * (cos(arg2 * pi) - 1)) + arg0;
}

function te_sine_out(arg0, arg1, arg2)
{
    return ((arg1 - arg0) * sin((arg2 * pi) / 2)) + arg0;
}

function te_swing(arg0, arg1, arg2)
{
    return lerp(arg0, arg1, 0.5 - (cos(arg2 * pi) / 2));
}
