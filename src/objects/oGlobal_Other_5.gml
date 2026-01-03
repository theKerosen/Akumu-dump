if (global.chase <= 0 && global.chasing)
{
    global.chasing = false;
    global.chase = global.chase_max;
}

if (global.safe)
    global.safe = false;
