function tw_sawtooth(arg0, arg1 = true)
{
    return arg1 ? arg0 : ((arg0 <= 0.5) ? (2 * arg0) : ((2 * arg0) - 2));
}

function tw_sawtooth_reverse(arg0, arg1 = true)
{
    return arg1 ? (1 - arg0) : (1 - (2 * arg0));
}

function tw_sinusoid(arg0, arg1 = true)
{
    return arg1 ? (0.5 - (0.5 * cos((2 * pi) * arg0))) : sin((2 * pi) * arg0);
}

function tw_triangle(arg0, arg1 = true)
{
    return arg1 ? ((arg0 <= 0.5) ? (2 * arg0) : (2 - (2 * arg0))) : ((arg0 <= 0.25) ? (4 * arg0) : ((arg0 <= 0.75) ? (2 - (4 * arg0)) : ((4 * arg0) - 4)));
}
