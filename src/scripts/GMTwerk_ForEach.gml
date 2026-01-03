function ForEachActor(arg0, arg1, arg2, arg3 = undefined) : GMTwerkActor() constructor
{
    static onAct = function(arg0)
    {
        time -= arg0;
        
        while (time <= 0)
        {
            onIterate(iterable.value, iterable.index);
            iterable.next();
            
            if (iterable.hasNext())
            {
                time += interval;
            }
            else
            {
                done();
                return state;
            }
        }
    };
    
    time = arg0;
    self.interval = time;
    self.iterable = is_array(arg1) ? new GMTwerkArrayIterator(arg1) : arg1;
    self.onIterate = arg2;
    
    if (!is_undefined(arg3))
        includeOpts(arg3);
    
    time = convertTime(time);
    self.interval = convertTime(self.interval);
}

function ForEach(arg0, arg1, arg2, arg3 = undefined)
{
    var actor = new ForEachActor(arg0, arg1, arg2, arg3);
    __gmtwerk_insert__(actor);
    return actor;
}
