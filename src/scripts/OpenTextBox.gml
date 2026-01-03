function OpenTextBox(arg0 = undefined, arg1 = undefined, arg2 = undefined, arg3 = undefined, arg4 = undefined, arg5 = undefined, arg6 = undefined, arg7 = undefined, arg8 = undefined, arg9 = undefined, arg10 = undefined)
{
    var manualPages = [];
    
    if (arg0 != undefined)
        array_push(manualPages, arg0);
    
    if (arg1 != undefined)
        array_push(manualPages, arg1);
    
    if (arg2 != undefined)
        array_push(manualPages, arg2);
    
    if (arg3 != undefined)
        array_push(manualPages, arg3);
    
    if (arg4 != undefined)
        array_push(manualPages, arg4);
    
    if (arg5 != undefined)
        array_push(manualPages, arg5);
    
    if (arg6 != undefined)
        array_push(manualPages, arg6);
    
    if (arg7 != undefined)
        array_push(manualPages, arg7);
    
    if (arg8 != undefined)
        array_push(manualPages, arg8);
    
    if (arg9 != undefined)
        array_push(manualPages, arg9);
    
    if (arg10 != undefined)
        array_push(manualPages, arg10);
    
    if (array_length_1d(manualPages) > 0)
        oTextBox.pages = scrSplitTextIntoPages("", global.TEXTBOX_FONT, 14, 177, 48, manualPages);
    else
        oTextBox.pages = scrSplitTextIntoPages(arg0, global.TEXTBOX_FONT, 14, 177, 48);
    
    oTextBox.page = 0;
    oTextBox.alarm[0] = 5;
}
