

@_exported import TimeTranslBase

public protocol AnyPeriodP: TimeP {
    //todo
}

/// AnyPeriod can represent any time period
public enum AnyPeriod: AnyPeriodP, Hashable {
    //TODO: add CustomStringConvertible
    // consider adding Comparable

    case duration(TimeDuration)

    /// specific period
    case interval(DateInterval)
    
    
    /// if value is nil - means just "currently, at present, current period"
    /// otherwise - "this / current + unit (year, month, etc)"
    /// for ex. "this period"
    case current(DurationUnit?) // or TimeDuration
    
    /// if value is nil - means all past
    /// otherwise - past / last / previous year, month, etc
    case past(DurationUnit?) // or TimeDuration
    
    /// if value is nil - means all future
    /// otherwise - future / next year, month, etc
    case future(DurationUnit?) // or TimeDuration
    
    
    case dayPeriod(DayPeriod)
    
    
    //TODO: add cases or impl as Modifier
    // much longer / shorter (DurationUnit?)
    // a little longer / shorter (DurationUnit?)
    
    
    /// part of period, percent value should be from 0.0 to 1.0
    case part(percent: Double, unit: DurationUnit) // or TimeDuration, or both
    
    // in that / this period, stored value can be UUID
    case then(Str)
    
    //MARK: -
    
    //    /// can mean for ex. start of a second, minute, etc
    //    case start(DurationUnit)
    //
    //    /// can mean for ex. end of a second, minute, etc
    //    case end
    //
    //    /// can mean for ex. middle of a second, minute, etc
    //    case middle
    //
    //
    //    /// means "a longer period", longer than some other
    //    /// for ex. "over 3 years"
    //    case longerThan(TimeDuration)
    //
    //    /// means "a shorter period", shorter than some other
    //    /// for ex. "below 3 years"
    //    case shorterThan(TimeDuration)

    
    
    // all below are already implemented in Moment, consider if impl-ng here as well is a good idea
    //    case soon
    //
    //    case never
    //
    //    case always
    
    //    /// some unknown time(moment)
    //    case some
    //
    //    //TODO: consider adding somePeriod
    //
    //    /// any time(moment) is possible
    //    case any
    //
    //TODO: consider adding anyPeriod
    
}


//MARK: -

public extension AnyPeriod {

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
public extension TimeDuration {
    
    var period: AnyPeriod {
        return AnyPeriod.duration(self)
    }
}

public extension DateInterval {
    
    var period: AnyPeriod {
        return AnyPeriod.interval(self)
    }
}

public extension DayPeriod {
    
    var period: AnyPeriod {
        return AnyPeriod.dayPeriod(self)
    }
}

