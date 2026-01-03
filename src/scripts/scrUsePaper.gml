function scrUsePaper()
{
    var paper = GetFacingObject();
    var inventorySize = ds_list_size(oGlobal.inventory);
    var cursorIndex = oInventoryBox.cursor;
    var item = ds_list_find_value(oGlobal.inventory, cursorIndex);
    var itemTag = array_get(item, 3);
    
    if (variable_instance_exists(paper, "paper"))
    {
        if (paper.paper == 1)
        {
            if (oPlayer.face != 3)
                exit;
            
            global.paperCorrect = true;
            
            with (paper)
                removeItem(item, itemTag);
        }
    }
    
    return false;
}
