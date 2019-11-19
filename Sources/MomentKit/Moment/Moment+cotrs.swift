

import MinimalBase

public extension Moment {
    
    //MARK: static cotrs
    
    /// for ex. "previous/last year"
    /// if nil - means "just now, recently"
    static func withPrevious(_ unit: DurationUnit? = nil,
                             _ within: Double? = nil) -> Moment {
        return Moment.previous(unit: unit, within: within)
    }
    
    /// for ex. "next year"
    /// if unit is nil - means future (or "in a moment" ??)
    static func withNext(_ unit: DurationUnit? = nil,
                         _ within: Double? = nil) -> Moment {
        return Moment.next(unit: unit, within: within)
    }
    
    /// for ex. "start of a minute"
    static func withStart(ofPeriod unit: DurationUnit)  -> Moment {
        return Moment.startOfPeriod(unit)
    }
    
    /// for ex. "end of a minute"
    static func withEnd(ofPeriod unit: DurationUnit) -> Moment {
        return Moment.endOfPeriod(unit)
    }
    
    /// for ex. "middle of a minute"
    static func withMiddle(ofPeriod unit: DurationUnit) -> Moment {
        return Moment.middleOfPeriod(unit)
    }
    
    
    /// past, for ex. "3 years ago"
    static func bySubtracting(_ value: Double,
                              _ unit: DurationUnit) -> Moment {
        return Moment.subtracting(TimeDuration(value, unit))
    }
    
    /// future, for ex. "in 3 years"
    static func byAdding(_ value: Double,
                         _ unit: DurationUnit) -> Moment {
        return Moment.adding(TimeDuration(value, unit))
    }
    
    
    //MARK: -
    
    /// start of this day
    static var startOfDay: Moment {
        return withStart(ofPeriod: .day)
    }
    
    /// end of this day
    static var endOfDay: Moment {
        return withEnd(ofPeriod: .day)
    }
    
    /// start of this week
    static var startOfWeek: Moment {
        return withStart(ofPeriod: .week)
    }
    
    /// end of this week
    static var endOfWeek: Moment {
        return withEnd(ofPeriod: .week)
    }
    
    /// start of this month
    static var startOfMonth: Moment {
        return withStart(ofPeriod: .day)
    }
    
    /// end of this month
    static var endOfMonth: Moment {
        return withEnd(ofPeriod: .day)
    }
    
    static var adding1Day: Moment {
        return byAdding(1.0, .day)
    }
    static var subtracting1Day: Moment {
        return bySubtracting(1.0, .day)
    }
    
    static var prevMonth: Moment {
        return withPrevious(.month)
    }
    static var nextMonth: Moment {
        return withNext(.month)
    }
    
    static var prevWeek: Moment {
        return withPrevious(.week)
    }
    static var nextWeek: Moment {
        return withNext(.week)
    }
    
    static var nextYear: Moment {
        return withNext(.year)
    }
    static var prevYear: Moment {
        return withPrevious(.year)
    }
    
    
    //MARK: - nearest -
    
    static func withNearest(_ unit: DurationUnit,
                            _ within: Double) -> Moment {
        return Moment.next(unit: unit, within: within)
    }
    
    static func nearestMinute(_ within: Double) -> Moment {
        return withNearest(.minute, within)
    }
    static func nearestHour(_ within: Double) -> Moment {
        return withNearest(.hour, within)
    }
    
    
    // add more convs based on below ?
    //    static func withNearestWeekday(_ weekDay: WeekDay) -> Moment {
    //           return Moment.nearestWeekday(weekDay)
    //       }
    //    static func withNearestMonth(_ month: Month) -> Moment {
    //        return Moment.nextMonth(month)
    //    }
    
    //    static var nextDSTTransition: Moment {
    //        fatalError()
    //        //return withStart(ofPeriod: .day)
    //    }
    
    
    //MARK: - complex (need, modifiers? ) -
    
    /// start of next day
    static var nextDayAtStart: Moment {
        return withNext(.day)
        //TODO: + startOf modifier
    }
    
    /// start of previous day
    static var prevDayAtStart: Moment {
        return withPrevious(.day)
        //TODO: + startOf modifier
    }
    
    
    //    func applying(_ mod: MomentModifier) -> Moment {
    //
    //        fatalError()
    //    }
}


///// A relative date period
//public enum RelDatePeriod: Equatable {
//    //TODO: CustomStringConvertible
//
//    //TODO: try change to generic
//    // start / end of any period
//    // next / prev unit
//    // adding 1 / n units
//
//    /// start of this day
//    case startOfDay // = Time.startOf(.day)
//
//    /// end of this day
//    case endOfDay
//
//    /// start of this week
//    case startOfWeek
//
//    /// start of this week
//    case endOfWeek
//
//    /// start of this month
//    case startOfMonth
//
//    /// start of this month
//    case endOfMonth
//
//
//    case adding1Day // = Time.inOne(.day)
//
//    /// start of next day
//    case nextDayAtStart // = Time.next(.day) + startOf modifier
//
//
//    case subtracting1Day // = Time.oneUnitAgo(.day)
//
//    /// start of previous day
//    case prevDayAtStart // = Time.previous(.day) + startOf modifier
//
//
//    case prevMonth // = Time.previous(.month)
//    case nextMonth // = Time.next(.month)
//
//    case prevWeek // = Time.previous(.week)
//    case nextWeek // = Time.next(.week)
//
//    case nextYear // = Time.next(.year)
//    case prevYear // = Time.previous(.year)
//
//
//    case nearestMinute(Int)
//    case nearestHour(Int)
//
//    /// next
//    case nearestWeekday(WeekDay)
//    case lastWeekday(WeekDay)
//
//    /// next
//    case nextMonth(Month)
//    case lastMonth(Month)
//
//
//    case nextDSTTransition
//}
