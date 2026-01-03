function GMTwerkActor() constructor
{
    static noop = function(arg0 = undefined)
    {
    };
    
    static pause = function(arg0 = true)
    {
        if (arg0 && state == UnknownEnum.Value_1)
        {
            state = UnknownEnum.Value_0;
            onPause(true);
        }
        else if (!arg0 && state == UnknownEnum.Value_0)
        {
            state = UnknownEnum.Value_1;
            onPause(false);
        }
    };
    
    static unpause = function()
    {
        pause(false);
    };
    
    static stop = function()
    {
        if (state >= UnknownEnum.Value_0)
        {
            state = UnknownEnum.Value_m2;
            onStop();
        }
    };
    
    static done = function()
    {
        if (state >= UnknownEnum.Value_0)
        {
            state = UnknownEnum.Value_m1;
            onDone();
        }
    };
    
    static act = function(arg0)
    {
        if (state)
        {
            if (owner == -4 || instance_exists(owner))
                onAct(arg0);
            else
                state = UnknownEnum.Value_m4;
        }
        
        return state;
    };
    
    static convertTime = function(arg0)
    {
        if (is_int64(arg0))
            return real(arg0);
        
        return arg0 * (deltaTime ? 1000 : (game_get_speed(gamespeed_fps) / 1000));
    };
    
    static includeOpts = function(arg0)
    {
        if (is_array(arg0))
        {
            var i = array_length(arg0) - 2;
            
            while (i >= 0)
            {
                variable_struct_set(self, arg0[i], arg0[i + 1]);
                i -= 2;
            }
            
            if (!is_undefined(bank))
                bank.add(self);
        }
    };
    
    static onAct = noop;
    
    state = UnknownEnum.Value_1;
    onPause = noop;
    onStop = noop;
    onDone = noop;
    onLost = noop;
    owner = -4;
    bank = undefined;
    deltaTime = false;
}

function GMTwerkBank() constructor
{
    static add = function(arg0)
    {
        _head = [arg0, _head];
        size++;
    };
    
    static act = function(arg0 = 1, arg1 = delta_time)
    {
        var needCleanup = false;
        var previousNode = undefined;
        var currentNode = _head;
        
        while (!is_undefined(currentNode))
        {
            var currentActor = currentNode[0];
            needCleanup = currentActor.act(currentActor.deltaTime ? arg1 : arg0) <= UnknownEnum.Value_m1 || needCleanup;
            currentNode = currentNode[1];
        }
        
        if (needCleanup)
        {
            previousNode = undefined;
            currentNode = _head;
            
            while (!is_undefined(currentNode))
            {
                var currentActor = currentNode[0];
                
                if (currentActor.state <= UnknownEnum.Value_m1)
                {
                    if (_head == currentNode)
                        _head = currentNode[1];
                    else
                        array_set(previousNode, 1, currentNode[1]);
                    
                    size--;
                }
                else
                {
                    previousNode = currentNode;
                }
                
                currentNode = currentNode[1];
            }
        }
    };
    
    static get = function(arg0)
    {
        var currentNode = _head;
        
        while (arg0-- && !is_undefined(currentNode))
            currentNode = currentNode[1];
        
        return is_undefined(currentNode) ? undefined : currentNode[0];
    };
    
    _head = undefined;
    size = 0;
}

function GMTwerkArrayIterator(arg0) constructor
{
    static hasNext = function()
    {
        return index < array_length(array);
    };
    
    static next = function()
    {
        value = (++index < array_length(array)) ? array[index] : undefined;
    };
    
    self.array = arg0;
    index = 0;
    value = (array_length(arg0) > 0) ? arg0[0] : undefined;
}

function __gmtwerk_insert__(arg0)
{
    if (is_undefined(arg0.bank))
    {
        if (id && variable_instance_exists(id, "__gmtwerk_self_host__"))
        {
            __gmtwerk_self_host__.add(arg0);
        }
        else
        {
            if (!instance_exists(__gmtwerk_host__))
                instance_create_depth(0, 0, 0, __gmtwerk_host__);
            
            if (id)
                arg0.owner = id;
            
            __gmtwerk_host__.__twerks__.add(arg0);
        }
    }
}

function gmtwerk_host()
{
    __gmtwerk_self_host__ = new GMTwerkBank();
}

function gmtwerk_run(arg0 = 1, arg1 = delta_time)
{
    __gmtwerk_self_host__.act(arg0, arg1);
}

enum UnknownEnum
{
    Value_m4 = -4,
    Value_m2 = -2,
    Value_m1,
    Value_0,
    Value_1
}
