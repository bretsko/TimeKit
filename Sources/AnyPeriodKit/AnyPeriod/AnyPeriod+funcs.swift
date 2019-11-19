

@_exported import Base


public extension AnyPeriod {
    
    //MARK: - static cotrs -
    
    /// 1 second
    static var second: AnyPeriod {
        TimeDuration.second.period
    }
    
    /// 1 minute
    static var minute: AnyPeriod {
        TimeDuration.minute.period
    }
    /// 1 hour
    static var hour: AnyPeriod {
        TimeDuration.hour.period
    }
    
    /// 1 halfHour
    //    static var halfHour: AnyPeriod {
    //        TimeDuration.halfHour.period
    //    }
    
    /// 1 day
    static var day: AnyPeriod {
        TimeDuration.day.period
    }
    /// 1 week
    static var week: AnyPeriod {
        TimeDuration.week.period
    }
    /// 1 month
    static var month: AnyPeriod {
        TimeDuration.month.period
    }
    /// 1 quarter of a year
    static var quarter: AnyPeriod {
        TimeDuration.quarter.period
    }
    /// 1 year
    static var year: AnyPeriod {
        TimeDuration.year.period
    }
    
    //MARK: -
    
    static func withDateInterval(start: Date,
                                 end: Date) -> AnyPeriod {
        .interval(DateInterval(start: start, end: end))
    }
    
    static func withDateInterval(start: Date,
                                 duration: TimeInterval) -> AnyPeriod {
        .interval(DateInterval(start: start, duration: duration))
    }
    
    static func withDuration(_ value: Double,
                             _ unit: DurationUnit) -> AnyPeriod {
        .duration(TimeDuration(value, unit))
    }
    
    /// if value is nil - means just "currently, at present, current period"
    /// otherwise - "this / current + unit (year, month, etc)"
    /// for ex. "this period"
    static func withCurrent(_ unit: DurationUnit? = nil) -> AnyPeriod {
        .current(unit)
    }
    
    /// if value is nil - means all past
    /// otherwise - past / last year, month, etc
    static func withPast(_ unit: DurationUnit? = nil) -> AnyPeriod {
        .past(unit)
    }
    
    /// if value is nil - means all future
    /// otherwise - future / next year, month, etc
    static func withFuture(_ unit: DurationUnit? = nil) -> AnyPeriod {
        .future(unit)
    }
    
    /// part of period, percent value should be from 0.0 to 1.0
    static func withPart(percent: Double,
                         of unit: DurationUnit) -> AnyPeriod {
        .part(percent: percent, unit: unit)
    }
    
    //    func applying(_ mod: AnyPeriodModifier) -> AnyPeriod {
    //
    //        fatalError()
    //    }
}
