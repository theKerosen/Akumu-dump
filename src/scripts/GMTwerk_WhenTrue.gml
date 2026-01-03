function WhenTrueActor(arg0, arg1 = undefined, arg2 = undefined) : GMTwerkActor() constructor
{
    static onAct = function()
    {
        if (condition())
            done();
    };
    
    self.condition = arg0;
    self.onDone = is_undefined(arg1) ? self.onDone : arg1;
    
    if (!is_undefined(arg2))
        includeOpts(arg2);
}

function WhenTrue(arg0, arg1 = undefined, arg2 = undefined)
{
    var actor = new WhenTrueActor(arg0, arg1, arg2);
    __gmtwerk_insert__(actor);
    return actor;
}
