var count = 0;

with (oBasementFloor2)
{
    count += 1;
    
    if (count > 1)
        instance_destroy();
}

depth = -9999999;
canDraw = false;
canLights = false;
oLightning.darkness = 0.7;
