function LogValueActor(arg0, arg1, arg2, arg3 = undefined) : GMTwerkActor() constructor
{
    static onAct = function(arg0)
    {
        var currentValue;
        
        if (subject.exists())
        {
            currentValue = subject.get();
        }
        else
        {
            onLost();
            return state;
        }
        
        if (interval == 0)
        {
            if (currentValue != lastValue)
            {
                log(currentValue);
                lastValue = currentValue;
            }
        }
        else
        {
            time -= arg0;
            var _absInterval = abs(interval);
            
            while (time <= 0)
            {
                if (interval > 0 || currentValue != lastValue)
                {
                    log(currentValue);
                    lastValue = currentValue;
                }
                
                time += _absInterval;
            }
        }
    };
    
    static log = function(arg0 = subject.get())
    {
        array_set(_log, _logPos, arg0);
        
        if (is_infinity(size))
            _logPos++;
        else
            _logPos = (_logPos + 1) % size;
        
        onLog(arg0);
        return self;
    };
    
    static get = function(arg0 = -1)
    {
        if (is_infinity(size))
            return _log[max(0, _logPos - arg0)];
        
        return _log[(_logPos + clamp(arg0, -size, size - 1) + size) % size];
    };
    
    self.subject = arg0;
    self.size = arg1;
    self.interval = arg2;
    self.time = arg2;
    startValue = arg0.get();
    onLog = noop;
    
    if (!is_undefined(arg3))
        includeOpts(arg3);
    
    self.time = abs(convertTime(self.time));
    self.interval = convertTime(self.interval);
    _log = is_infinity(self.size) ? [] : array_create(self.size, startValue);
    _logPos = 0;
    lastValue = startValue;
}

function LogValue(arg0, arg1, arg2, arg3 = undefined)
{
    var actor = new LogValueActor(arg0, arg1, arg2, arg3);
    __gmtwerk_insert__(actor);
    return actor;
}
