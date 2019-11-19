


public enum DurationLongUnit: Str, StrEnumT {
    
    case days, weeks, months, years, decades, centuries, eras
    
    /// quarter of a year
    case quarters
    
    //?
    //    case halfHour
    //    //?? remove or add also quarter of hour
    //    // currently used by translation models -> only use there
    //case weekDay(WeekDay)
    //case monthName(Month)
    
}

public extension DurationLongUnit {
    
    //TOD
    /// generates minimal set of short units
    var shortUnits: Set<DurationShortUnit> {
        fatalError()
    }
}
