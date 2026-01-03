function RepeatActor(arg0, arg1, arg2, arg3 = undefined) : GMTwerkActor() constructor
{
    static onAct = function(arg0)
    {
        time -= arg0;
        
        while (time <= 0 && repeats > 0)
        {
            onIterate();
            
            if (--repeats <= 0)
                done();
            else
                time += interval;
        }
    };
    
    self.time = arg0;
    self.interval = self.time;
    self.repeats = arg1;
    self.onIterate = arg2;
    
    if (!is_undefined(arg3))
        includeOpts(arg3);
    
    self.time = convertTime(self.time);
    self.interval = convertTime(self.interval);
}

function Repeat(arg0, arg1, arg2, arg3 = undefined)
{
    var actor = new RepeatActor(arg0, arg1, arg2, arg3);
    __gmtwerk_insert__(actor);
    return actor;
}
