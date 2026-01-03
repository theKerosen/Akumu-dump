function addItem(arg0, arg1, arg2)
{
    var item = global.ITEMS[arg0];
    var itemDef = global.ITEMS[arg0];
    item[0] = arg0;
    item[1] = clamp(arg1, 1, itemDef[4]);
    item[3] = arg2;
    ds_list_add(oGlobal.inventory, item);
}
