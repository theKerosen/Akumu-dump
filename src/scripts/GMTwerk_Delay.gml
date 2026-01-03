function DelayActor(arg0, arg1 = undefined, arg2 = undefined) : GMTwerkActor() constructor
{
    static onAct = function(arg0)
    {
        time -= arg0;
        
        if (time <= 0)
            done();
    };
    
    self.time = arg0;
    
    if (!is_undefined(arg1))
        self.onDone = arg1;
    
    if (!is_undefined(arg2))
        includeOpts(arg2);
    
    self.time = convertTime(self.time);
}

function Delay(arg0, arg1 = undefined, arg2 = undefined)
{
    var actor = new DelayActor(arg0, arg1, arg2);
    __gmtwerk_insert__(actor);
    return actor;
}
