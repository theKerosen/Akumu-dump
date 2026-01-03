function file_read_all_text(arg0)
{
    var _buffer = buffer_load(arg0);
    
    if (_buffer == -1)
        return undefined;
    
    var _result = buffer_read(_buffer, buffer_string);
    buffer_delete(_buffer);
    return _result;
}

function file_write_all_text(arg0, arg1)
{
    var _buffer = buffer_create(string_length(arg1), buffer_grow, 1);
    buffer_write(_buffer, buffer_text, arg1);
    buffer_save(_buffer, arg0);
    buffer_delete(_buffer);
}
