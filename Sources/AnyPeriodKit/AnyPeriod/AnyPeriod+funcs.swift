

import MinimalBase


public extension AnyPeriod {
    
    //MARK: - static cotrs -
    
    /// 1 second
    static var second: AnyPeriod {
        return TimeDuration.second.period
    }
    
    /// 1 minute
    static var minute: AnyPeriod {
        return TimeDuration.minute.period
    }
    /// 1 hour
    static var hour: AnyPeriod {
        return TimeDuration.hour.period
    }
    /// 1 halfHour
    static var halfHour: AnyPeriod {
        return TimeDuration.halfHour.period
    }
    /// 1 day
    static var day: AnyPeriod {
        return TimeDuration.day.period
    }
    /// 1 week
    static var week: AnyPeriod {
        return TimeDuration.week.period
    }
    /// 1 month
    static var month: AnyPeriod {
        return TimeDuration.month.period
    }
    /// 1 quarter of a year
    static var quarter: AnyPeriod {
        return TimeDuration.quarter.period
    }
    /// 1 year
    static var year: AnyPeriod {
        return TimeDuration.year.period
    }
    
    //MARK: -
    
    static func withDateInterval(start: Date,
                                 end: Date) -> AnyPeriod {
        let interval = DateInterval(start: start, end: end)
        return AnyPeriod.interval(interval)
    }
    
    static func withDateInterval(start: Date,
                                 duration: TimeInterval) -> AnyPeriod {
        let interval = DateInterval(start: start, duration: duration)
        return AnyPeriod.interval(interval)
    }
    
    static func withDuration(_ value: Double,
                               _ unit: DurationUnit) -> AnyPeriod {
        let duration = TimeDuration(value, unit)
        return AnyPeriod.duration(duration)
    }
    
    /// if value is nil - means just "currently, at present, current period"
    /// otherwise - "this / current + unit (year, month, etc)"
    /// for ex. "this period"
    static func withCurrent(_ unit: DurationUnit? = nil) -> AnyPeriod {
        return AnyPeriod.current(unit)
    }
    
    /// if value is nil - means all past
    /// otherwise - past / last year, month, etc
    static func withPast(_ unit: DurationUnit? = nil) -> AnyPeriod {
        return AnyPeriod.past(unit)
    }
    
    /// if value is nil - means all future
    /// otherwise - future / next year, month, etc
    static func withFuture(_ unit: DurationUnit? = nil) -> AnyPeriod {
        return AnyPeriod.future(unit)
    }
    
    /// part of period, percent value should be from 0.0 to 1.0
    static func withPart(percent: Double,
                         unit: DurationUnit) -> AnyPeriod {
        return AnyPeriod.part(percent: percent, unit: unit)
    }
    
    //    func applying(_ mod: AnyPeriodModifier) -> AnyPeriod {
    //
    //        fatalError()
    //    }
}
