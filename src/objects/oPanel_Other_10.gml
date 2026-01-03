if (!canEnter)
    exit;

instance_create_layer(x, y, "Instances", oNotPause);

if (screwlock != -4)
{
    canDraw = true;
}
else if (screwlock == -4 && global.screwUsed)
{
    bgImage = 3;
    designedSprite = sPanelOpening;
    canDraw = true;
}
else if (screwlock == -4 && !global.screwUsed)
{
    canDraw = true;
}
