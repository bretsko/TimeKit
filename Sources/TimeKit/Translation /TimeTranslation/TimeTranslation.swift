
@_exported import TimeKitBase


/// Translation of time unit, each unit can have several translation variants
public struct TimeTranslation: Hashable {
    
    public var time: Time
    
    /// translation variants for current unit
    public var variants: [Str]
}

public extension TimeTranslation {
    
    init(_ time: Time,
         _ variants: [Str]) {
        self.time = time
        self.variants = variants
    }
    
    init(_ time: Time,
         _ variant: Str) {
        self.init(time, [variant])
    }
    
    //MARK:
    
    init(_ moment: Moment,
         _ variants: [Str]) {
        self.init(Time.moment(moment), variants)
    }
    
    init(_ period: AnyPeriod,
         _ variants: [Str]) {
        self.init(Time.period(period), variants)
    }
    
    init(_ recurring: Recurrence,
         _ variants: [Str]) {
        self.init(Time.recurring(recurring), variants)
    }
    
    //MARK: -
    
    /// for ex. "this year"
    init(_ unit: DurationUnit, current: [Str]) {
        let time = AnyPeriod.current(unit)
        self.init(time, current)
    }
    
    /// for ex. "past / previous / last year"
    init(_ unit: DurationUnit, past: [Str]) {
        let time = AnyPeriod.past(unit)
        self.init(time, past)
    }
    
    /// for ex. "next year"
    init(_ unit: DurationUnit, future: [Str]) {
        let time = AnyPeriod.future(unit)
        self.init(time, future)
    }
    
    
    /// past, for ex. "1 year ago"
    init(_ unit: DurationUnit, oneUnitAgo: [Str]) {
        // can init with any
        let time = Moment.bySubtracting(1, unit)
        self.init(time, oneUnitAgo)
    }
    /// past, for ex. "2 years ago"
    init(_ unit: DurationUnit, manyUnitsAgo: [Str]) {
        // can init with any
        let time = Moment.bySubtracting(1, unit)
        self.init(time, manyUnitsAgo)
    }
    
    /// future, for ex. "in 1 year"
    init(_ unit: DurationUnit, inOneUnit: [Str]) {
        let time = Moment.byAdding(1, unit)
        // can init with any
        self.init(time, inOneUnit)
    }
    /// future, for ex. "in 2 years"
    init(_ unit: DurationUnit, inManyUnits: [Str]) {
        let time = Moment.byAdding(1, unit)
        // can init with any
        self.init(time, inManyUnits)
    }
    
    /// for ex. "this year"
    init(now: [Str]) {
        self.init(Moment.now, now)
    }
}

//public extension TimeTranslation {

//MARK: conv getters of [Str]

//    /// transl variants for current unit, for ex. "this year"
//    var _current: [Str]? {
//        guard let modifier = time._time?.momentModifier else {
//            return nil
//        }
//        switch modifier {
//        case .current:
//            return variants.sth
//        default:
//            return nil
//        }
//    }
//
//    /// transl variants for previous unit, for ex. "previous/last year"
//    var _previous: [Str]? {
//        guard let modifier = time._time?.momentModifier else {
//            return nil
//        }
//        switch modifier {
//        case .previous:
//            return variants.sth
//        default:
//            return nil
//        }
//    }
//
//    /// transl variants for next unit, for ex. "next year"
//    var _next: [Str]? {
//        guard let modifier = time._time?.momentModifier else {
//            return nil
//        }
//        switch modifier {
//        case .next:
//            return variants.sth
//        default:
//            return nil
//        }
//    }
//
//    /// transl variants for oneUnitAgo, for ex. "1 year ago"
//    var _oneUnitAgo: [Str]? {
//        guard let modifier = time._time?.momentModifier else {
//            return nil
//        }
//        switch modifier {
//        case .subtracting:
//            return variants.sth
//        default:
//            return nil
//        }
//    }
//
//    /// transl variants for manyUnitsAgo, for ex. "2 years ago"
//    var _manyUnitsAgo: [Str]? {
//        guard let modifier = time._time?.momentModifier else {
//            return nil
//        }
//        switch modifier {
//        case .subtracting:
//            return variants.sth
//        default:
//            return nil
//        }
//    }
//
//    /// transl variants for inOneUnit, for ex. "in 1 year"
//    var _inOneUnit: [Str]? {
//        guard let modifier = time._time?.momentModifier else {
//            return nil
//        }
//        switch modifier {
//        case .adding:
//            return variants.sth
//        default:
//            return nil
//        }
//    }
//
//    /// transl variants for inManyUnits,for ex. "in 2 years"
//    var _inManyUnits: [Str]? {
//        guard let modifier = time._time?.momentModifier else {
//            return nil
//        }
//        switch modifier {
//        case .adding:
//            return variants.sth
//        default:
//            return nil
//        }
//    }
//
//    //MARK: conv getters
//
//    /// transl variants for current unit, for ex. "this year"
//    var _day: [Str]? {
//        guard let exactTime = time._time else {
//            return nil
//        }
//        switch exactTime.unit {
//        case .day:
//            return variants.sth
//        default:
//            return nil
//        }
//    }
//
//    /// transl variants for previous unit, for ex. "previous/last year"
//    var _halfHour: [Str]? {
//        guard let exactTime = time._time else {
//            return nil
//        }
//        switch exactTime.unit {
//        case .halfHour:
//            return variants.sth
//        default:
//            return nil
//        }
//    }
//
//    /// transl variants for next unit, for ex. "next year"
//    var _hour: [Str]? {
//        guard let exactTime = time._time else {
//            return nil
//        }
//        switch exactTime.unit {
//        case .hour:
//            return variants.sth
//        default:
//            return nil
//        }
//    }
//
//    /// transl variants for oneUnitAgo, for ex. "1 year ago"
//    var _minute: [Str]? {
//        guard let exactTime = time._time else {
//            return nil
//        }
//        switch exactTime.unit {
//        case .minute:
//            return variants.sth
//        default:
//            return nil
//        }
//    }
//
//    /// transl variants for manyUnitsAgo, for ex. "2 years ago"
//    var _month: [Str]? {
//        guard let exactTime = time._time else {
//            return nil
//        }
//        switch exactTime.unit {
//        case .month:
//            return variants.sth
//        default:
//            return nil
//        }
//    }
//
//    /// transl variants for inOneUnit, for ex. "in 1 year"
//    var _quarter: [Str]? {
//        guard let exactTime = time._time else {
//            return nil
//        }
//        switch exactTime.unit {
//        case .quarter:
//            return variants.sth
//        default:
//            return nil
//        }
//    }
//
//    /// transl variants for inManyUnits,for ex. "in 2 years"
//    var _second: [Str]? {
//        guard let exactTime = time._time else {
//            return nil
//        }
//        switch exactTime.unit {
//        case .second:
//            return variants.sth
//        default:
//            return nil
//        }
//    }
//
//    /// transl variants for inManyUnits,for ex. "in 2 years"
//    var _week: [Str]? {
//        guard let exactTime = time._time else {
//            return nil
//        }
//        switch exactTime.unit {
//        case .week:
//            return variants.sth
//        default:
//            return nil
//        }
//    }
//
//    /// transl variants for year,for ex. "in 2 years"
//    var _year: [Str]? {
//        guard let exactTime = time._time else {
//            return nil
//        }
//        switch exactTime.unit {
//        case .year:
//            return variants.sth
//        default:
//            return nil
//        }
//    }
//
//    //MARK: abstract
//
//    /// transl variants for now, for ex. "currently", "at this moment"
//    var _now: [Str]? {
//        switch time {
//        case .now:
//            return variants.sth
//        default:
//            return nil
//        }
//    }
//}

