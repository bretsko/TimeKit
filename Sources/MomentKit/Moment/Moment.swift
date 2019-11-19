


@_exported import TimeTranslBase

public protocol MomentP: TimeP {
    //todo
}

/// Moment can represent any moment in time
public enum Moment: MomentP, Hashable {
    //TODO: CustomStringConvertible
    
    case date(Date)
    
    //MARK: next / previous

    /// for ex. "future / next year or 5 minutes"
    /// "next / next 5 minutes"
    /// if unit is nil - means "just now, recently"
    /// if within is not nil - uses this number to check inside the period
    case next(unit: DurationUnit?, within: Double?)

    //TODO: consider making within a Modifier

    /// for ex. "previous / last year or 5 minutes"
    /// "previous / next "
    /// if unit is nil - means future (or "in a moment" ??)
    /// if within is not nil - uses this number to check inside the period
    case previous(unit: DurationUnit?, within: Double?)
    
    
    /// "next / next Monday"
    case nextWeekDay(WeekDay)
    
    /// "previous / last Monday"
    case previousWeekDay(WeekDay)
    
    
    /// "next / next January"
    case nextMonth(Month)
    
    /// "previous / last January"
    case previousMonth(Month)
    

    //MARK: period modifiers
    
    /// for ex. "start of a minute"
    case startOfPeriod(DurationUnit) // or TimeDuration, or both
    
    /// for ex. "end of a minute"
    case endOfPeriod(DurationUnit) // or TimeDuration, or both
    
    /// for ex. "middle of a minute"
    case middleOfPeriod(DurationUnit) // or TimeDuration, or both
    
    
    //MARK: add / subtract time

    /// past, for ex. "3 years ago"
    case subtracting(TimeDuration)
    
    /// future, for ex. "in 3 years"
    case adding(TimeDuration)
    
    
    //MARK: other
    
    case dayMoment(DayMoment)
    
    // at that / this time, stored value can be UUID
    case then(String)
    
    /// current, present
    case now
    
    case never
    
    /// any time(moment) is possible
    case anytime
    
    case always
    
    /// some / unknown time(moment)
    case some
    
    //case soon

    
    case nextDSTTransition
}

//MARK: - TimeP -

public extension Moment {

    var timeClass: TimeClass {
        fatalError()
    }
    
    func translate(into lang: LocaleID) -> [String]? {
        fatalError()
    }
    
    /// tries to interpret a given string in specified language
    init?(_ timeString: String, _ lang: LocaleID) {
        fatalError()
    }
}
