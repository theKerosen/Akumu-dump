function GMTwerkSelector() constructor
{
}

function GlobalVarSelector(arg0) : GMTwerkSelector() constructor
{
    static exists = function()
    {
        return variable_global_exists(name);
    };
    
    static get = function()
    {
        return variable_global_get(name);
    };
    
    static set = function(arg0)
    {
        variable_global_set(name, arg0);
        return self;
    };
    
    self.name = arg0;
}

function GlobalVar(arg0)
{
    return new GlobalVarSelector(arg0);
}

function GlobalVecSelector(arg0) : GMTwerkSelector() constructor
{
    static exists = function()
    {
        var i = dim - 1;
        
        while (i >= 0)
        {
            if (!variable_global_exists(names[i]))
                return false;
            
            i--;
        }
        
        return true;
    };
    
    static get = function()
    {
        var v = array_create(dim);
        var i = dim - 1;
        
        while (i >= 0)
        {
            v[i] = variable_global_get(names[i]);
            i--;
        }
        
        return v;
    };
    
    static set = function(arg0)
    {
        var i = dim - 1;
        
        while (i >= 0)
        {
            variable_global_set(names[i], arg0[i]);
            i--;
        }
        
        return self;
    };
    
    self.names = arg0;
    dim = array_length(arg0);
}

function GlobalVec(arg0)
{
    return new GlobalVecSelector(arg0);
}

function InstanceVarSelector(arg0, arg1) : GMTwerkSelector() constructor
{
    static exists = function()
    {
        return instance_exists(inst) && variable_instance_exists(inst, name);
    };
    
    static get = function()
    {
        return variable_instance_get(inst, name);
    };
    
    static set = function(arg0)
    {
        variable_instance_set(inst, name, arg0);
        return self;
    };
    
    self.name = arg0;
    self.inst = arg1;
}

function InstanceVar(arg0, arg1 = id)
{
    return new InstanceVarSelector(arg0, arg1);
}

function InstanceVecSelector(arg0, arg1) : GMTwerkSelector() constructor
{
    static exists = function()
    {
        var i = dim - 1;
        
        while (i >= 0)
        {
            if (!variable_instance_exists(inst, names[i]))
                return false;
            
            i--;
        }
        
        return true;
    };
    
    static get = function()
    {
        var v = array_create(dim);
        var i = dim - 1;
        
        while (i >= 0)
        {
            v[i] = variable_instance_get(inst, names[i]);
            i--;
        }
        
        return v;
    };
    
    static set = function(arg0)
    {
        var i = dim - 1;
        
        while (i >= 0)
        {
            variable_instance_set(inst, names[i], arg0[i]);
            i--;
        }
        
        return self;
    };
    
    self.names = arg0;
    dim = array_length(arg0);
    self.inst = arg1;
}

function InstanceVec(arg0, arg1 = id)
{
    return new InstanceVecSelector(arg0, arg1);
}

function StructVarSelector(arg0, arg1) constructor
{
    static exists = function()
    {
        return is_struct(strc) && variable_struct_exists(strc, name);
    };
    
    static get = function()
    {
        return variable_struct_get(strc, name);
    };
    
    static set = function(arg0)
    {
        variable_struct_set(strc, name, arg0);
        return self;
    };
    
    self.name = arg0;
    self.strc = arg1;
}

function StructVar(arg0, arg1)
{
    return new StructVarSelector(arg0, arg1);
}

function StructVecSelector(arg0, arg1) constructor
{
    static exists = function()
    {
        if (!is_struct(strc))
            return false;
        
        var i = dim - 1;
        
        while (i >= 0)
        {
            if (!variable_struct_exists(strc, names[i]))
                return false;
            
            i--;
        }
        
        return true;
    };
    
    static get = function()
    {
        var v = array_create(dim);
        var i = dim - 1;
        
        while (i >= 0)
        {
            v[i] = variable_struct_get(strc, names[i]);
            i--;
        }
        
        return v;
    };
    
    static set = function(arg0)
    {
        var i = dim - 1;
        
        while (i >= 0)
        {
            variable_struct_set(strc, names[i], arg0[i]);
            i--;
        }
        
        return self;
    };
    
    self.names = arg0;
    dim = array_length(arg0);
    self.strc = arg1;
}

function StructVec(arg0, arg1)
{
    return new StructVecSelector(arg0, arg1);
}

function ArrayVarSelector(arg0, arg1) constructor
{
    static exists = function()
    {
        return is_array(array) && array_length(array) > index;
    };
    
    static get = function()
    {
        return array[index];
    };
    
    static set = function(arg0)
    {
        array_set(array, index, arg0);
        return self;
    };
    
    self.index = arg0;
    self.array = arg1;
}

function ArrayVar(arg0, arg1)
{
    return new ArrayVarSelector(arg0, arg1);
}

function DataUnitSelector(arg0) : GMTwerkSelector() constructor
{
    static exists = function()
    {
        return true;
    };
    
    static get = function()
    {
        return data;
    };
    
    static set = function(arg0)
    {
        data = arg0;
        return self;
    };
    
    self.data = arg0;
}

function DataUnit(arg0)
{
    return new DataUnitSelector(arg0);
}
