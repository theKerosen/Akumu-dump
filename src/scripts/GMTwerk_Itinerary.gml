function ItineraryActor(arg0, arg1, arg2 = undefined) : GMTwerkActor() constructor
{
    static onAct = function(arg0)
    {
        if (countUp)
        {
            time += arg0;
            
            while (time >= nextMoment)
            {
                nextAction();
                
                if (!__toNext__())
                {
                    done();
                    return state;
                }
            }
        }
        else
        {
            time -= arg0;
            
            while (time <= nextMoment)
            {
                nextAction();
                
                if (!__toNext__())
                {
                    done();
                    return state;
                }
            }
        }
    };
    
    static __toNext__ = function()
    {
        itinerary.next();
        
        if (itinerary.hasNext())
        {
            nextMoment = convertTime(itinerary.index);
            nextAction = itinerary.value;
            return true;
        }
        
        nextMoment = undefined;
        nextAction = undefined;
        return false;
    };
    
    self.time = arg0;
    countUp = arg0 <= 0;
    self.itinerary = is_array(arg1) ? new GMTwerkItineraryIterator(arg1) : arg1;
    
    if (!is_undefined(arg2))
        includeOpts(arg2);
    
    self.time = convertTime(self.time);
    
    if (self.itinerary.hasNext())
    {
        nextMoment = convertTime(self.itinerary.index);
        nextAction = self.itinerary.value;
        
        if (nextMoment == self.time)
        {
            nextAction();
            
            if (!__toNext__())
                done();
        }
    }
    else
    {
        nextMoment = undefined;
        nextAction = undefined;
        done();
    }
}

function GMTwerkItineraryIterator(arg0) constructor
{
    static hasNext = function()
    {
        return _i < array_length(itineraryArray);
    };
    
    static next = function()
    {
        if (++_i >= array_length(itineraryArray))
        {
            index = undefined;
            value = undefined;
        }
        else
        {
            index = itineraryArray[_i][0];
            value = itineraryArray[_i][1];
        }
    };
    
    self.itineraryArray = arg0;
    _i = 0;
    
    if (array_length(self.itineraryArray) == 0)
    {
        index = undefined;
        value = undefined;
    }
    else
    {
        index = self.itineraryArray[_i][0];
        value = self.itineraryArray[_i][1];
    }
}

function Itinerary(arg0, arg1, arg2 = undefined)
{
    var actor = new ItineraryActor(arg0, arg1, arg2);
    __gmtwerk_insert__(actor);
    return actor;
}
