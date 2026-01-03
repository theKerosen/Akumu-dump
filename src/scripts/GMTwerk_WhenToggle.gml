function WhenToggleActor(arg0, arg1 = undefined, arg2 = undefined, arg3 = undefined) : GMTwerkActor() constructor
{
    static onAct = function()
    {
        var currentState = condition();
        
        if (currentState ^^ toggleState)
        {
            if (currentState)
                onFalseTrue();
            else
                onTrueFalse();
        }
        
        toggleState = currentState;
    };
    
    self.condition = arg0;
    self.onFalseTrue = is_undefined(arg1) ? noop : arg1;
    self.onTrueFalse = is_undefined(arg2) ? noop : arg2;
    
    if (!is_undefined(arg3))
        includeOpts(arg3);
    
    toggleState = arg0();
}

function WhenToggle(arg0, arg1 = undefined, arg2 = undefined, arg3 = undefined)
{
    var actor = new WhenToggleActor(arg0, arg1, arg2, arg3);
    __gmtwerk_insert__(actor);
    return actor;
}
