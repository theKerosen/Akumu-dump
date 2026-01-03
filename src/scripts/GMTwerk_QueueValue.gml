function QueueValueActor(arg0, arg1, arg2 = undefined) : GMTwerkActor() constructor
{
    static onAct = function(arg0)
    {
        if (_dequeuePos >= 0)
        {
            for (time -= arg0; time <= 0; time += interval)
            {
                if ((_enqueuePos - _dequeuePos) > 0)
                {
                    pop();
                }
                else
                {
                    _clear(-1);
                    time = interval;
                    break;
                }
            }
        }
        else
        {
            time = interval;
        }
    };
    
    static _clear = function(arg0)
    {
        array_resize(queue, 0);
        _dequeuePos = arg0;
        _enqueuePos = arg0;
    };
    
    static clear = function()
    {
        _clear(-1);
        onClear();
        return self;
    };
    
    static push = function(arg0)
    {
        onPush(arg0);
        
        if (_enqueuePos < 0)
        {
            onPop(arg0);
            _dequeuePos++;
            _enqueuePos++;
        }
        else
        {
            array_set(queue, _enqueuePos++, arg0);
        }
        
        return self;
    };
    
    static pop = function()
    {
        var val = queue[_dequeuePos++];
        
        if (_dequeuePos >= _enqueuePos)
            _clear(0);
        
        onPop(val);
        return val;
    };
    
    static size = function()
    {
        return _enqueuePos - _dequeuePos;
    };
    
    static top = function(arg0 = 0)
    {
        var _targetPos = arg0 + _dequeuePos;
        return (_targetPos < _enqueuePos) ? queue[_targetPos] : undefined;
    };
    
    self.interval = arg0;
    time = arg0;
    self.onPop = arg1;
    onPush = noop;
    onClear = noop;
    
    if (!is_undefined(arg2))
        includeOpts(arg2);
    
    self.time = convertTime(self.time);
    self.interval = convertTime(self.interval);
    queue = [];
    _dequeuePos = -1;
    _enqueuePos = -1;
}

function QueueValue(arg0, arg1, arg2 = undefined)
{
    var actor = new QueueValueActor(arg0, arg1, arg2);
    __gmtwerk_insert__(actor);
    return actor;
}
