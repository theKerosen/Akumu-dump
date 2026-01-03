function screenshake(arg0, arg1, arg2)
{
    with (oGlobal)
    {
        shake = true;
        shake_time = arg0;
        shake_magnitude = arg1;
        shake_fade = arg2;
    }
}
