function scrSplitTextIntoPages(arg0, arg1, arg2, arg3, arg4, arg5 = undefined)
{
    var pages = [];
    
    if (arg5 != undefined)
        return arg5;
    
    var page = "";
    var words = string_split(arg0, " ");
    var length = array_length_1d(words);
    draw_set_font(arg1);
    
    for (var i = 0; i < length; i++)
    {
        var word = words[i];
        
        if (string_height_ext(page + " " + word, arg2, arg3) >= arg4)
        {
            array_push(pages, page);
            page = word;
        }
        else
        {
            if (i > 0)
                page += " ";
            
            page += word;
        }
    }
    
    array_push(pages, page);
    return pages;
}
