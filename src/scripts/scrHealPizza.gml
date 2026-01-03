function scrHealPizza()
{
    var inventorySize = ds_list_size(oGlobal.inventory);
    var cursorIndex = oInventoryBox.cursor;
    var item = ds_list_find_value(oGlobal.inventory, cursorIndex);
    var itemTag = array_get(item, 3);
    oPlayer.state = 1;
    oTextBox.hasAudio = true;
    OpenTextBox("I don't wanna eat it now.");
    oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
    return false;
}
