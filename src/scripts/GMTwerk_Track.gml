function BaseTrackActor(arg0, arg1) : GMTwerkActor() constructor
{
    static onAct = function(arg0)
    {
        if (subject.exists() && target.exists())
        {
            if (!moving)
            {
                fromValue = subject.get();
                toValue = target.get();
                
                if (fromValue != toValue)
                {
                    moving = true;
                    onNudge();
                }
            }
            
            if (moving)
            {
                if (continuous)
                {
                    fromValue = subject.get();
                    toValue = target.get();
                }
                
                subject.set(trackPerform(arg0));
                
                if (trackReached())
                {
                    moving = false;
                    subject.set(toValue);
                    onReach();
                }
            }
        }
        else
        {
            moving = false;
            state = UnknownEnum.Value_m3;
            onLost();
        }
    };
    
    static done = function()
    {
        if (state >= UnknownEnum.Value_0)
        {
            subject.set(target.get());
            moving = false;
            state = UnknownEnum.Value_m1;
            onDone();
        }
    };
    
    static stop = function()
    {
        if (state >= UnknownEnum.Value_0)
        {
            if (snapOnStop)
                subject.set(target.get());
            
            moving = false;
            state = UnknownEnum.Value_m2;
            onStop();
        }
    };
    
    self.subject = arg0;
    fromValue = undefined;
    self.target = arg1;
    toValue = undefined;
    moving = false;
    onNudge = noop;
    onReach = noop;
    snapOnStop = true;
    continuous = false;
}

function TrackActor(arg0, arg1, arg2, arg3 = undefined) : BaseTrackActor(arg0, arg1) constructor
{
    static trackPerform = function(arg0)
    {
        elapsedTime += arg0;
        
        if (elapsedTime > time)
            elapsedTime = time;
        
        if (is_undefined(blend))
            return script_execute(type, fromValue, toValue, elapsedTime / time);
        
        return script_execute(blend, fromValue, toValue, script_execute(type, 0, 1, elapsedTime / time));
    };
    
    static trackReached = function()
    {
        if (elapsedTime >= time)
        {
            elapsedTime = 0;
            return true;
        }
        
        return false;
    };
    
    self.time = arg2;
    type = te_swing;
    blend = undefined;
    
    if (!is_undefined(arg3))
        includeOpts(arg3);
    
    self.time = convertTime(self.time);
    elapsedTime = 0;
}

function Track(arg0, arg1, arg2, arg3 = undefined)
{
    var actor = new TrackActor(arg0, arg1, arg2, arg3);
    __gmtwerk_insert__(actor);
    return actor;
}

function ZenosTrackActor(arg0, arg1, arg2, arg3 = undefined) : BaseTrackActor(arg0, arg1) constructor
{
    static trackPerform = function(arg0)
    {
        if (deltaTime)
        {
            var fractionPower = 1 - power(1 - fraction, arg0 / game_get_speed(gamespeed_microseconds));
            latestValue = is_undefined(blend) ? lerp(fromValue, toValue, fractionPower) : script_execute(blend, fromValue, toValue, fractionPower);
        }
        else if (arg0 == 1)
        {
            latestValue = is_undefined(blend) ? lerp(fromValue, toValue, fraction) : script_execute(blend, fromValue, toValue, fraction);
        }
        else
        {
            var fractionPower = 1 - power(1 - fraction, arg0);
            latestValue = is_undefined(blend) ? lerp(fromValue, toValue, fractionPower) : script_execute(blend, fromValue, toValue, fractionPower);
        }
        
        return latestValue;
    };
    
    static trackReached = function()
    {
        return (is_undefined(blend) ? abs(latestValue - toValue) : script_execute(blend, latestValue, toValue, undefined)) < tolerance;
    };
    
    self.fraction = arg2;
    tolerance = 1;
    blend = undefined;
    continuous = true;
    
    if (!is_undefined(arg3))
        includeOpts(arg3);
    
    latestValue = arg0.get();
}

function ZenosTrack(arg0, arg1, arg2, arg3 = undefined)
{
    var actor = new ZenosTrackActor(arg0, arg1, arg2, arg3);
    __gmtwerk_insert__(actor);
    return actor;
}

function StepTrackActor(arg0, arg1, arg2, arg3 = undefined) : BaseTrackActor(arg0, arg1) constructor
{
    static trackPerform = function(arg0)
    {
        var remainingDistance = is_undefined(blend) ? abs(toValue - fromValue) : script_execute(blend, fromValue, toValue, undefined);
        var stepMultiple = min(deltaTime ? (arg0 / game_get_speed(gamespeed_microseconds)) : arg0, remainingDistance / step);
        
        if (is_undefined(blend))
            latestValue = fromValue + (step * stepMultiple * sign(toValue - fromValue));
        else
            latestValue = script_execute(blend, fromValue, toValue, (step * stepMultiple) / remainingDistance);
        
        if (integerOnly && frac(latestValue) != 0)
            latestValue = floor(latestValue);
        
        return latestValue;
    };
    
    static trackReached = function()
    {
        return (is_undefined(blend) ? abs(latestValue - toValue) : script_execute(blend, latestValue, toValue, undefined)) < step;
    };
    
    self.step = arg2;
    blend = undefined;
    integerOnly = false;
    continuous = true;
    
    if (!is_undefined(arg3))
        includeOpts(arg3);
    
    latestValue = arg0.get();
}

function StepTrack(arg0, arg1, arg2, arg3 = undefined)
{
    var actor = new StepTrackActor(arg0, arg1, arg2, arg3);
    __gmtwerk_insert__(actor);
    return actor;
}

function ChannelTrackActor(arg0, arg1, arg2, arg3, arg4 = undefined) : BaseTrackActor(arg0, arg1) constructor
{
    static trackPerform = function(arg0)
    {
        elapsedTime += arg0;
        
        if (elapsedTime > time)
            elapsedTime = time;
        
        var channelY = (animcurve_channel_evaluate(channel, elapsedTime / time) - y0) / (y1 - y0);
        
        if (is_undefined(blend))
            return lerp(fromValue, toValue, channelY);
        
        return script_execute(blend, fromValue, toValue, channelY);
    };
    
    static trackReached = function()
    {
        if (elapsedTime >= time)
        {
            elapsedTime = 0;
            return true;
        }
        
        return false;
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

function ChannelTrack(arg0, arg1, arg2, arg3, arg4 = undefined)
{
    var actor = new ChannelTrackActor(arg0, arg1, arg2, arg3, arg4);
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
