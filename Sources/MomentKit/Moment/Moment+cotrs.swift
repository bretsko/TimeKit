


public extension Moment {
    
    //MARK: static cotrs
    
    /// for ex. "previous/last year"
    /// if nil - means "just now, recently"
    static func withPrevious(_ unit: DurationUnit? = nil,
                             _ within: Double? = nil) -> Moment {
        Moment.previous(unit: unit, within: within)
    }
    
    /// for ex. "next year"
    /// if unit is nil - means future (or "in a moment" ??)
    static func withNext(_ unit: DurationUnit? = nil,
                         _ within: Double? = nil) -> Moment {
        Moment.next(unit: unit, within: within)
    }
    
    /// for ex. "start of a minute"
    static func withStart(ofPeriod unit: DurationUnit)  -> Moment {
        Moment.startOfPeriod(unit)
    }
    
    /// for ex. "end of a minute"
    static func withEnd(ofPeriod unit: DurationUnit) -> Moment {
        Moment.endOfPeriod(unit)
    }
    
    /// for ex. "middle of a minute"
    static func withMiddle(ofPeriod unit: DurationUnit) -> Moment {
        Moment.middleOfPeriod(unit)
    }
    
    
    /// past, for ex. "3 years ago"
    static func bySubtracting(_ value: Double,
                              _ unit: DurationUnit) -> Moment {
        Moment.subtracting(TimeDuration(value, unit))
    }
    
    /// future, for ex. "in 3 years"
    static func byAdding(_ value: Double,
                         _ unit: DurationUnit) -> Moment {
        Moment.adding(TimeDuration(value, unit))
    }
    
    
    //MARK: -
    
    /// start of this day
    static var startOfDay: Moment {
        withStart(ofPeriod: .days)
    }
    
    /// end of this day
    static var endOfDay: Moment {
        withEnd(ofPeriod: .days)
    }
    
    /// start of this week
    static var startOfWeek: Moment {
        withStart(ofPeriod: .weeks)
    }
    
    /// end of this week
    static var endOfWeek: Moment {
        withEnd(ofPeriod: .weeks)
    }
    
    /// start of this month
    static var startOfMonth: Moment {
        withStart(ofPeriod: .days)
    }
    
    /// end of this month
    static var endOfMonth: Moment {
        withEnd(ofPeriod: .days)
    }
    
    static var adding1Day: Moment {
        byAdding(1.0, .days)
    }
    static var subtracting1Day: Moment {
        bySubtracting(1.0, .days)
    }
    
    static var prevMonth: Moment {
        withPrevious(.months)
    }
    static var nextMonth: Moment {
        withNext(.months)
    }
    
    static var prevWeek: Moment {
        withPrevious(.weeks)
    }
    static var nextWeek: Moment {
        withNext(.weeks)
    }
    
    static var nextYear: Moment {
        withNext(.years)
    }
    static var prevYear: Moment {
        withPrevious(.years)
    }
    
    
    //MARK: - nearest -
    
    static func withNearest(_ unit: DurationUnit,
                            _ within: Double) -> Moment {
        Moment.next(unit: unit, within: within)
    }
    
    static func nearestMinute(_ within: Double) -> Moment {
        withNearest(.minutes, within)
    }
    static func nearestHour(_ within: Double) -> Moment {
        withNearest(.hours, within)
    }
    
    
    // add more convs based on below ?
    //    static func withNearestWeekday(_ weekDay: WeekDay) -> Moment {
    //            Moment.nearestWeekday(weekDay)
    //       }
    //    static func withNearestMonth(_ month: Month) -> Moment {
    //         Moment.nextMonth(month)
    //    }
    
    //    static var nextDSTTransition: Moment {
    //        fatalError()
    //        // withStart(ofPeriod: .day)
    //    }
    
    
    //MARK: - complex (need, modifiers? ) -
    
    /// start of next day
    static var nextDayAtStart: Moment {
        withNext(.days)
        //TODO: + startOf modifier
    }
    
    /// start of previous day
    static var prevDayAtStart: Moment {
        withPrevious(.days)
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
