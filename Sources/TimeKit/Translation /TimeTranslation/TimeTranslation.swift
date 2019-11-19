

@_exported import MinimalBase
@_exported import TimeKitBase


/// Translation of time unit, each unit can have several translation variants
public struct TimeTranslation: Equatable {
    
    public var time: Time
    
    /// translation variants for current unit
    public var variants: [String]
    
    public init(_ time: Time,
                _ variants: [String]) {
        self.time = time
        self.variants = variants
    }
}

public extension TimeTranslation {
    
    init(_ time: Time,
         _ variant: String) {
        self.init(time, [variant])
    }
    
    //MARK:
    
    init(_ moment: Moment,
         _ variants: [String]) {
        self.init(Time.moment(moment), variants)
    }
    
    init(_ period: AnyPeriod,
         _ variants: [String]) {
        self.init(Time.period(period), variants)
    }
    
    init(_ recurring: Recurrence,
         _ variants: [String]) {
        self.init(Time.recurring(recurring), variants)
    }
    
    //MARK: -
    
    /// for ex. "this year"
    init(_ unit: DurationUnit, current: [String]) {
        let time = AnyPeriod.current(unit)
        self.init(time, current)
    }
    
    /// for ex. "past / previous / last year"
    init(_ unit: DurationUnit, past: [String]) {
        let time = AnyPeriod.past(unit)
        self.init(time, past)
    }
    
    /// for ex. "next year"
    init(_ unit: DurationUnit, future: [String]) {
        let time = AnyPeriod.future(unit)
        self.init(time, future)
    }
    
    
    /// past, for ex. "1 year ago"
    init(_ unit: DurationUnit, oneUnitAgo: [String]) {
        // can init with any
        let time = Moment.bySubtracting(1, unit)
        self.init(time, oneUnitAgo)
    }
    /// past, for ex. "2 years ago"
    init(_ unit: DurationUnit, manyUnitsAgo: [String]) {
        // can init with any
        let time = Moment.bySubtracting(1, unit)
        self.init(time, manyUnitsAgo)
    }
    
    /// future, for ex. "in 1 year"
    init(_ unit: DurationUnit, inOneUnit: [String]) {
        let time = Moment.byAdding(1, unit)
        // can init with any
        self.init(time, inOneUnit)
    }
    /// future, for ex. "in 2 years"
    init(_ unit: DurationUnit, inManyUnits: [String]) {
        let time = Moment.byAdding(1, unit)
        // can init with any
        self.init(time, inManyUnits)
    }
    
    /// for ex. "this year"
    init(now: [String]) {
        self.init(Moment.now, now)
    }
}

