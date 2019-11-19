



public extension TimeDuration {
    
    /// 1 second
    static var second: TimeDuration {
        TimeDuration(1.0, .seconds)
    }
    
    /// 1 minute
    static var minute: TimeDuration {
        TimeDuration(1.0, .minutes)
    }
    
    /// 1 hour
    static var hour: TimeDuration {
        TimeDuration(1.0, .hours)
    }
    
    /// 1 halfHour
//    static var halfHour: TimeDuration {
//        TimeDuration(1.0, .halfHours)
//    }
    
    /// 1 day
    static var day: TimeDuration {
        TimeDuration(1.0, .days)
    }
    
    /// 1 week
    static var week: TimeDuration {
        TimeDuration(1.0, .weeks)
    }
    
    /// 1 month
    static var month: TimeDuration {
        TimeDuration(1.0, .months)
    }
    
    /// 1 quarter of a year
    static var quarter: TimeDuration {
        TimeDuration(1.0, .quarters)
    }
    
    /// 1 year
    static var year: TimeDuration {
        TimeDuration(1.0, .years)
    }
    
    
    //MARK: -
    
    //TODO: add transl to TimeDuration / DateInterval
    
    /// creates period with given duration, in seconds
    static func seconds(_ num: Double) -> TimeDuration {
        TimeDuration(num, .seconds)
    }
    
    /// creates period with given duration, in minutes
    static func minutes(_ num: Double) -> TimeDuration {
        TimeDuration(num, .minutes)
    }
    
    /// creates period with given duration, in hours
    static func hours(_ num: Double) -> TimeDuration {
        TimeDuration(num, .hours)
    }
    
    /// creates period with given duration, in halfHour
//    static func halfHours(_ num: Double) -> TimeDuration {
//        TimeDuration(num, .halfHours)
//    }
    
    //?? remove or add also quarter of hour
    // currently used by translation models -> only use there
    
    /// creates period with given duration, in days
    static func days(_ num: Double) -> TimeDuration {
        TimeDuration(num, .days)
    }
    
    /// creates period with given duration, in weeks
    static func weeks(_ num: Double) -> TimeDuration {
        TimeDuration(num, .weeks)
    }
    
    /// creates period with given duration, in months
    static func months(_ num: Double) -> TimeDuration {
        TimeDuration(num, .months)
    }
    
    /// quarters of the year
    /// creates period with given duration, in quarters
    static func quarters(_ num: Double) -> TimeDuration {
        TimeDuration(num, .quarters)
    }
    
    /// creates period with given duration, in years
    static func years(_ num: Double) -> TimeDuration {
        TimeDuration(num, .years)
    }
    
    // static func century, era, etc
}

//TODO: consider adding ext for Double to make Durations

