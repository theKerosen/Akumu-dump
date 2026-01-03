if (saveImage == 8)
{
    loop = 1;
    saveImage = 1;
}

if (saveImage >= 8 && loop == 1)
    instance_destroy();
