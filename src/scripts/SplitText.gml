function scrSplitText(arg0, arg1)
{
    var words = ds_list_create();
    var start = 1;
    var _end = string_pos(arg1, arg0);
    
    while (_end > 0)
    {
        var word = string_copy(arg0, start, _end - start);
        ds_list_add(words, word);
        start = _end + 1;
        _end = string_pos(arg1, arg0);
    }
    
    if (start <= string_length(arg0))
    {
        var lastWord = string_copy(arg0, start, (string_length(arg0) - start) + 1);
        ds_list_add(words, lastWord);
    }
    
    return words;
}
