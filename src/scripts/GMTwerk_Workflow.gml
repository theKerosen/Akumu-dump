function WorkflowActor(arg0, arg1 = undefined) : GMTwerkActor() constructor
{
    static onAct = function(arg0)
    {
        if (!acted)
        {
            var currentAction = actions[actionNumber];
            currentActor = currentAction();
            acted = true;
        }
        
        if (is_struct(currentActor))
        {
            switch (currentActor.state)
            {
                case UnknownEnum.Value_1:
                case UnknownEnum.Value_0:
                    break;
                
                case UnknownEnum.Value_m1:
                    if (++actionNumber >= array_length(actions))
                        done();
                    else
                        acted = false;
                    
                    break;
                
                case UnknownEnum.Value_m3:
                    state = UnknownEnum.Value_m3;
                    onLost();
                    break;
                
                default:
                    stop();
                    break;
            }
        }
        else if (++actionNumber >= array_length(actions))
        {
            done();
        }
        else
        {
            acted = false;
        }
    };
    
    self.actions = arg0;
    actionNumber = 0;
    acted = false;
    currentActor = undefined;
    
    if (!is_undefined(arg1))
        includeOpts(arg1);
}

function Workflow(arg0, arg1 = undefined)
{
    var actor = new WorkflowActor(arg0, arg1);
    __gmtwerk_insert__(actor);
    return actor;
}

enum UnknownEnum
{
    Value_m3 = -3,
    Value_m1 = -1,
    Value_0,
    Value_1
}
