if (instance_exists(oPlayer))
    instance_destroy();

layed = true;
Delay(4000, function()
{
    layed = false;
});
