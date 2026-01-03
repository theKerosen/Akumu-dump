function removeItem(arg0, arg1)
{
    var item = getItem(arg0, arg1);
    
    if (item != -4)
    {
        var pos = ds_list_find_index(oGlobal.inventory, item);
        ds_list_delete(oGlobal.inventory, pos);
    }
}
