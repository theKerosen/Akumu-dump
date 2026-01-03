function scrInitItems()
{
    global.ITEMS = [];
    global.ITEMS[0] = createItem("Key", "Not too rusty. Still useful.", sKey1, scrUseKey, 1);
    global.ITEMS[2] = createItem("Knife", "Clean. For now.", sKnifeCollectable, scrUseKnife, 1);
    global.ITEMS[3] = createItem("Cold Pizza", "You should probably heat it.", sPizza, scrUsePizza, 1);
    global.ITEMS[4] = createItem("Pizza", "Still warm. Best set on the counter.", sPizza, scrUseHotPizza, 1);
    global.ITEMS[5] = createItem("Pizza", "Still warm. Smells good.", sPizza, scrHealPizza, 1);
    global.ITEMS[6] = createItem("Candle", "A source of light.", sLantern, scrUseCandle, 1);
    global.ITEMS[7] = createItem("Toilet paper", "Doesn't look used.\nThat's good.", sToiletPaper, scrUsePaper, 1);
    global.ITEMS[8] = createItem("Faust", "You shouldn't remember this. But you do.", sBookInventory, scrUseWitchBook, 1);
    global.ITEMS[9] = createItem("Book", "Nothing interesting on it.\nI guess.", sFakeBookInventory, scrUseFakeBook, 1);
    global.ITEMS[10] = createItem("Screwdriver", "Seems to be useful.", sScrewdriver, scrUseScrew, 1);
}
