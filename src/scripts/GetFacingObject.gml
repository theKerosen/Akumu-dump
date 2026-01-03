function GetFacingObject()
{
    var tx = x;
    var ty = y;
    
    switch (face)
    {
        case 3:
            ty += 8;
            break;
        
        case 0:
            tx += 8;
            break;
        
        case 1:
            ty -= 8;
            break;
        
        case 2:
            tx -= 8;
            break;
    }
    
    return instance_place(tx, ty, oInteractive);
}
