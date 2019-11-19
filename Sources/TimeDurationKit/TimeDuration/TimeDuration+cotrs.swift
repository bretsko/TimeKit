

import MinimalBase


public extension TimeDuration {
        
    /// 1 second
    static var second: TimeDuration {
        return TimeDuration(1.0, .second)
    }
    
    /// 1 minute
    static var minute: TimeDuration {
        return TimeDuration(1.0, .minute)
    }
    
    /// 1 hour
    static var hour: TimeDuration {
        return TimeDuration(1.0, .hour)
    }
    
    /// 1 halfHour
    static var halfHour: TimeDuration {
        return TimeDuration(1.0, .halfHour)
    }
    
    /// 1 day
    static var day: TimeDuration {
        return TimeDuration(1.0, .day)
    }
    
    /// 1 week
    static var week: TimeDuration {
        return TimeDuration(1.0, .week)
    }
    
    /// 1 month
    static var month: TimeDuration {
        return TimeDuration(1.0, .month)
    }
    
    /// 1 quarter of a year
    static var quarter: TimeDuration {
        return TimeDuration(1.0, .quarter)
    }
    
    /// 1 year
    static var year: TimeDuration {
        return TimeDuration(1.0, .year)
    }
    
    
    //MARK: -
    
    //TODO: add transl to TimeDuration / DateInterval
    
    /// creates period with given duration, in seconds
    static func seconds(_ num: Double) -> TimeDuration {
        return TimeDuration(num, .second)
    }
    
    /// creates period with given duration, in minutes
    static func minutes(_ num: Double) -> TimeDuration {
        return TimeDuration(num, .minute)
    }
    
    /// creates period with given duration, in hours
    static func hours(_ num: Double) -> TimeDuration {
        return TimeDuration(num, .hour)
    }
    
    /// creates period with given duration, in halfHour
    static func halfHours(_ num: Double) -> TimeDuration {
        return TimeDuration(num, .halfHour)
    }
    //?? remove or add also quarter of hour
    // currently used by translation models -> only use there
    
    /// creates period with given duration, in days
    static func days(_ num: Double) -> TimeDuration {
        return TimeDuration(num, .day)
    }
    
    /// creates period with given duration, in weeks
    static func weeks(_ num: Double) -> TimeDuration {
        return TimeDuration(num, .week)
    }

    /// creates period with given duration, in months
    static func months(_ num: Double) -> TimeDuration {
        return TimeDuration(num, .month)
    }
    
    /// quarters of the year
    /// creates period with given duration, in quarters
    static func quarters(_ num: Double) -> TimeDuration {
        return TimeDuration(num, .quarter)
    }
    
    /// creates period with given duration, in years
    static func years(_ num: Double) -> TimeDuration {
        return TimeDuration(num, .year)
    }
    
    // static func century, era, etc
}

//TODO: consider adding ext for Double to make Durations

