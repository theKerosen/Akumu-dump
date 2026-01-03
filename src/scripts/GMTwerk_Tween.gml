function BaseTweenActor(arg0, arg1) : GMTwerkActor() constructor
{
    static onAct = function(arg0)
    {
        if (subject.exists())
        {
            subject.set(tweenPerform(arg0));
            
            if (tweenIsDone())
                done();
        }
        else
        {
            state = UnknownEnum.Value_m3;
            onLost();
        }
    };
    
    static done = function()
    {
        if (state >= UnknownEnum.Value_0)
        {
            subject.set(target);
            state = UnknownEnum.Value_m1;
            onDone();
        }
    };
    
    static stop = function()
    {
        if (state >= UnknownEnum.Value_0)
        {
            if (snapOnStop)
                subject.set(target);
            
            state = UnknownEnum.Value_m2;
            onStop();
        }
    };
    
    self.subject = arg0;
    source = self.subject.get();
    self.target = arg1;
    snapOnStop = true;
}

function TweenActor(arg0, arg1, arg2, arg3 = undefined) : BaseTweenActor(arg0, arg1) constructor
{
    static tweenPerform = function(arg0)
    {
        elapsedTime += arg0;
        
        if (elapsedTime > time)
            elapsedTime = time;
        
        if (is_undefined(blend))
            return script_execute(type, source, target, elapsedTime / time);
        
        return script_execute(blend, source, target, script_execute(type, 0, 1, elapsedTime / time));
    };
    
    static tweenIsDone = function()
    {
        return elapsedTime >= time;
    };
    
    self.time = arg2;
    type = te_swing;
    blend = undefined;
    
    if (!is_undefined(arg3))
        includeOpts(arg3);
    
    self.time = convertTime(self.time);
    elapsedTime = 0;
}

function Tween(arg0, arg1, arg2)
{
    var actor = new TweenActor(arg0, arg1, arg2, (argument_count > 3) ? argument[3] : undefined);
    __gmtwerk_insert__(actor);
    return actor;
}

function ZenosTweenActor(arg0, arg1, arg2, arg3 = undefined) : BaseTweenActor(arg0, arg1) constructor
{
    static tweenPerform = function(arg0)
    {
        if (deltaTime)
        {
            var fractionPower = 1 - power(1 - fraction, arg0 / game_get_speed(gamespeed_microseconds));
            latestValue = is_undefined(blend) ? lerp(subject.get(), target, fractionPower) : script_execute(blend, subject.get(), target, fractionPower);
        }
        else if (arg0 == 1)
        {
            latestValue = is_undefined(blend) ? lerp(subject.get(), target, fraction) : script_execute(blend, subject.get(), target, fraction);
        }
        else
        {
            var fractionPower = 1 - power(1 - fraction, arg0);
            latestValue = is_undefined(blend) ? lerp(subject.get(), target, fractionPower) : script_execute(blend, subject.get(), target, fractionPower);
        }
        
        return latestValue;
    };
    
    static tweenIsDone = function()
    {
        return (is_undefined(blend) ? abs(latestValue - target) : script_execute(blend, latestValue, target, undefined)) < tolerance;
    };
    
    self.fraction = arg2;
    tolerance = 1;
    blend = undefined;
    
    if (!is_undefined(arg3))
        includeOpts(arg3);
    
    latestValue = self.subject.get();
}

function ZenosTween(arg0, arg1, arg2, arg3 = undefined)
{
    var actor = new ZenosTweenActor(arg0, arg1, arg2, arg3);
    __gmtwerk_insert__(actor);
    return actor;
}

function StepTweenActor(arg0, arg1, arg2, arg3 = undefined) : BaseTweenActor(arg0, arg1) constructor
{
    static tweenPerform = function(arg0)
    {
        var subjectGet = subject.get();
        var remainingDistance = is_undefined(blend) ? abs(target - subjectGet) : script_execute(blend, subjectGet, target, undefined);
        var stepMultiple = min(deltaTime ? (arg0 / game_get_speed(gamespeed_microseconds)) : arg0, remainingDistance / step);
        
        if (is_undefined(blend))
            latestValue = subjectGet + (step * stepMultiple * sign(target - subjectGet));
        else
            latestValue = script_execute(blend, subjectGet, target, (step * stepMultiple) / remainingDistance);
        
        if (integerOnly && frac(latestValue) != 0)
            latestValue = floor(latestValue);
        
        return latestValue;
    };
    
    static tweenIsDone = function()
    {
        return (is_undefined(blend) ? abs(latestValue - target) : script_execute(blend, latestValue, target, undefined)) < step;
    };
    
    self.step = arg2;
    blend = undefined;
    integerOnly = false;
    
    if (!is_undefined(arg3))
        includeOpts(arg3);
    
    latestValue = self.subject.get();
}

function StepTween(arg0, arg1, arg2, arg3 = undefined)
{
    var actor = new StepTweenActor(arg0, arg1, arg2, arg3);
    __gmtwerk_insert__(actor);
    return actor;
}

function ChannelTweenActor(arg0, arg1, arg2, arg3, arg4 = undefined) : BaseTweenActor(arg0, arg1) constructor
{
    static tweenPerform = function(arg0)
    {
        elapsedTime += arg0;
        
        if (elapsedTime > time)
            elapsedTime = time;
        
        var channelY = (animcurve_channel_evaluate(channel, elapsedTime / time) - y0) / (y1 - y0);
        
        if (is_undefined(blend))
            return lerp(source, target, channelY);
        
        return script_execute(blend, source, target, channelY);
    };
    
    static tweenIsDone = function()
    {
        return elapsedTime >= time;
    };
    
    self.time = arg2;
    self.channel = is_struct(arg3) ? arg3 : (is_array(arg3) ? animcurve_get_channel(arg3[0], arg3[1]) : animcurve_get_channel(arg3, 0));
    y0 = 0;
    y1 = 1;
    blend = undefined;
    
    if (!is_undefined(arg4))
        includeOpts(arg4);
    
    self.time = convertTime(self.time);
    elapsedTime = 0;
}

function ChannelTween(arg0, arg1, arg2, arg3, arg4 = undefined)
{
    var actor = new ChannelTweenActor(arg0, arg1, arg2, arg3, arg4);
    __gmtwerk_insert__(actor);
    return actor;
}

enum UnknownEnum
{
    Value_m3 = -3,
    Value_m2,
    Value_m1,
    Value_0
}
