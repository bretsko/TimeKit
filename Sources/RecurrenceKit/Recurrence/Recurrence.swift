


@_exported import TimeTranslBase

/// Any repeating interval / period
public enum Recurrence: TimeP, Hashable {
    //TODO: add CustomStringConvertible
    // consider adding Comparable
    
    /// repeats given interval
    /// if end is not nil - limits the period with it
    case repeating(seconds: TimeInterval, startBoundary: Date?, endBoundary: Date?)
    
    /// repeats given period
    /// if end is not nil - limits the period with it
    case repeatingDuration(TimeDuration, startBoundary: Date?, endBoundary: Date?)
    
    /// repeats given interval with its duration
    /// if end is not nil - limits the period with it
    case repeatingDateInterval(DateInterval, endBoundary: Date?)
    
    /// for ex, every month
    /// if start or end are not nil - limits the period with them
    case every(unit: DurationUnit, startBoundary: Date?, endBoundary: Date?)
    

    /// for ex, 3 times in a month
    // case times(Double, DurationUnit)
    
    /// for ex, 3 times in 2 months
    // case timesInPeriod(Double, Double, DurationUnit)
}

//MARK: - TimeP -

public extension Recurrence {

    var timeClass: TimeClass {
        fatalError()
    }
    
    func translate(into lang: LID) -> [Str]? {
        fatalError()
    }
    
    /// tries to interpret a given string in specified language
    init?(_ timeString: Str, _ lang: LID) {
        fatalError()
    }
}
