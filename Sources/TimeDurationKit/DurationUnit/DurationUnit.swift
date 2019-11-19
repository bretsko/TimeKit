

import MinimalBase


/// Time units can be used to mean a moment or a period, nanosecond is not impl-d to allow second be used as period, consisting of nanoseconds
public enum DurationUnit: String, StrEnumT {
    //TODO: add CustomStringConvertible
     // consider adding Comparable

    case second
    
    case minute
    
    case hour
    
    case halfHour
    //?? remove or add also quarter of hour
    // currently used by translation models -> only use there
    
    case day
    
    case week
    
    case month

    /// quarter of a year
    case quarter
    
    case year
    
    // case century, era, etc
    
    // ?
    //case weekDay(WeekDay)
    //case monthName(Month)
}
