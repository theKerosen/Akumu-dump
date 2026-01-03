function getItem(arg0, arg1)
{
    var length = ds_list_size(oGlobal.inventory);
    
    for (var i = 0; i < length; i++)
    {
        var item = ds_list_find_value(oGlobal.inventory, i);
        
        if (item[0] == arg0)
            return item;
        
        if (item[3] == arg1)
            return item;
    }
    
    return -4;
}
