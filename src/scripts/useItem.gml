function useItem(arg0, arg1)
{
    var item = getItem(arg0, arg1);
    
    if (item != -4)
    {
        var itemDef = global.ITEMS[arg0];
        var action = itemDef[3];
        
        if (action != -4)
        {
            if (!action())
                exit;
        }
        else
        {
            exit;
        }
        
        array_set(item, 1, array_get(item, 1) - 1);
        
        if (item[1] <= 0)
            removeItem(arg0, arg1);
    }
}
