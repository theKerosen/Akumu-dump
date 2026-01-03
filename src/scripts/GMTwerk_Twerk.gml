function BaseTwerkActor(arg0, arg1, arg2) : GMTwerkActor() constructor
{
    static onAct = function(arg0)
    {
        if (subject.exists())
        {
            subject.set(twerkPerform(arg0));
            
            if (timesDone >= times)
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
            subject.set(source);
            state = UnknownEnum.Value_m1;
            onDone();
        }
    };
    
    static doneOnNext = function()
    {
        times = timesDone + 1;
    };
    
    static stop = function()
    {
        if (state >= UnknownEnum.Value_0)
        {
            if (snapOnStop)
                subject.set(source);
            
            state = UnknownEnum.Value_m2;
            onStop();
        }
    };
    
    self.subject = arg0;
    source = self.subject.get();
    self.target = arg1;
    self.times = arg2;
    timesDone = 0;
    snapOnStop = true;
}

function WaveTwerkActor(arg0, arg1, arg2, arg3, arg4 = undefined) : BaseTwerkActor(arg0, arg1, arg2) constructor
{
    static twerkPerform = function(arg0)
    {
        phase += (arg0 / wavelength);
        timesDone += floor(phase);
        phase = frac(phase);
        var waveHeight = (phase == 0) ? 0 : script_execute(wave, phase, positiveOnly);
        return is_undefined(blend) ? lerp(source, target, waveHeight) : script_execute(blend, source, target, waveHeight);
    };
    
    phase = 0;
    self.wavelength = arg3;
    positiveOnly = true;
    wave = tw_sinusoid;
    blend = undefined;
    
    if (!is_undefined(arg4))
        includeOpts(arg4);
    
    self.wavelength = convertTime(self.wavelength);
}

function WaveTwerk(arg0, arg1, arg2, arg3, arg4 = undefined)
{
    var actor = new WaveTwerkActor(arg0, arg1, arg2, arg3, arg4);
    __gmtwerk_insert__(actor);
    return actor;
}

function FlashTwerkActor(arg0, arg1, arg2, arg3, arg4 = arg3, arg5 = undefined) : BaseTwerkActor(arg0, arg1, arg2) constructor
{
    static twerkPerform = function(arg0)
    {
        flashTime += arg0;
        
        while (flashTime > (flashOn ? onTime : offTime))
        {
            flashTime -= (flashOn ? onTime : offTime);
            flashOn = !flashOn;
            
            if (!flashOn)
                timesDone++;
        }
        
        return flashOn ? target : source;
    };
    
    self.onTime = arg3;
    self.offTime = arg4;
    flashOn = true;
    flashTime = 0;
    
    if (!is_undefined(arg5))
        includeOpts(arg5);
    
    self.onTime = convertTime(self.onTime);
    self.offTime = convertTime(self.offTime);
    self.flashTime = convertTime(self.flashTime);
}

function FlashTwerk(arg0, arg1, arg2, arg3, arg4, arg5 = undefined)
{
    var actor = new FlashTwerkActor(arg0, arg1, arg2, arg3, arg4, arg5);
    __gmtwerk_insert__(actor);
    return actor;
}

function ShakeTwerkActor(arg0, arg1, arg2, arg3, arg4 = undefined) : BaseTwerkActor(arg0, arg1, arg2) constructor
{
    static twerkPerform = function(arg0)
    {
        time += arg0;
        
        while (time >= length)
        {
            time -= length;
            timesDone++;
        }
        
        var amplitude = is_undefined(decay) ? 1 : script_execute(decay, 1, 0, time / length);
        var shakeT = random(amplitude) * (positiveOnly ? 1 : choose(-1, 1));
        return is_undefined(blend) ? lerp(source, target, shakeT) : script_execute(blend, source, target, shakeT);
    };
    
    time = 0;
    self.length = arg3;
    positiveOnly = false;
    blend = undefined;
    decay = te_quadratic_out;
    
    if (!is_undefined(arg4))
        includeOpts(arg4);
    
    self.time = convertTime(self.time);
    self.length = convertTime(self.length);
}

function ShakeTwerk(arg0, arg1, arg2, arg3, arg4 = undefined)
{
    var actor = new ShakeTwerkActor(arg0, arg1, arg2, arg3, arg4);
    __gmtwerk_insert__(actor);
    return actor;
}

function ChannelTwerkActor(arg0, arg1, arg2, arg3, arg4, arg5 = undefined) : BaseTwerkActor(arg0, arg1, arg2) constructor
{
    static twerkPerform = function(arg0)
    {
        time += arg0;
        
        while (time >= length)
        {
            time -= length;
            timesDone++;
        }
        
        var t = (animcurve_channel_evaluate(channel, time / length) - y0) / (y1 - y0);
        return is_undefined(blend) ? lerp(source, target, t) : script_execute(blend, source, target, t);
    };
    
    time = 0;
    self.channel = is_struct(arg4) ? arg4 : (is_array(arg4) ? animcurve_get_channel(arg4[0], arg4[1]) : animcurve_get_channel(arg4, 0));
    y0 = 0;
    y1 = 1;
    self.length = arg3;
    blend = undefined;
    
    if (!is_undefined(arg5))
        includeOpts(arg5);
    
    self.time = convertTime(self.time);
    self.length = convertTime(self.length);
}

function ChannelTwerk(arg0, arg1, arg2, arg3, arg4, arg5 = undefined)
{
    var actor = new ChannelTwerkActor(arg0, arg1, arg2, arg3, arg4, arg5);
    __gmtwerk_insert__(actor);
    return actor;
}

function DubstepTwerkActor(arg0, arg1, arg2, arg3, arg4 = undefined) : BaseTwerkActor(arg0, arg1, arg2) constructor
{
    static twerkPerform = function(arg0)
    {
        time += arg0;
        
        while (time >= length)
        {
            time -= length;
            timesDone++;
        }
        
        var p = time / length;
        var t = (p < 0.5) ? script_execute(forward, 0, 1, p * 2) : script_execute(backward, 1, 0, (p - 0.5) * 2);
        return is_undefined(blend) ? lerp(source, target, t) : script_execute(blend, source, target, t);
    };
    
    time = 0;
    self.length = arg3;
    blend = undefined;
    forward = te_swing;
    backward = te_swing;
    
    if (!is_undefined(arg4))
        includeOpts(arg4);
    
    self.time = convertTime(self.time);
    self.length = convertTime(self.length);
}

function DubstepTwerk(arg0, arg1, arg2, arg3, arg4 = undefined)
{
    var actor = new DubstepTwerkActor(arg0, arg1, arg2, arg3, arg4);
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
