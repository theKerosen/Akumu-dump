function WhileActor(arg0, arg1, arg2, arg3 = undefined) : GMTwerkActor() constructor
{
    static onAct = function(arg0)
    {
        time -= arg0;
        
        while (time <= 0)
        {
            if (condition())
            {
                onIterate();
            }
            else
            {
                done();
                return state;
            }
            
            if (condition())
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
    
    self.time = arg0;
    self.interval = self.time;
    self.condition = arg1;
    self.onIterate = arg2;
    
    if (!is_undefined(arg3))
        includeOpts(arg3);
    
    self.time = convertTime(self.time);
    self.interval = convertTime(self.interval);
}

function While(arg0, arg1, arg2, arg3 = undefined)
{
    var actor = new WhileActor(arg0, arg1, arg2, arg3);
    __gmtwerk_insert__(actor);
    return actor;
}
