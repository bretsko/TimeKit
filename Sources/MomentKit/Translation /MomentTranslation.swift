


@_exported import TimeKitBase


/// Translation of time unit, each unit can have several translation variants
public struct MomentTranslation: Equatable {
    
    public var moment: Moment
    
    /// translation variants for current unit
    public var variants: [Str]
}

public extension MomentTranslation {
    
    init(_ moment: Moment,
         _ variants: [Str]) {
        self.moment = moment
        self.variants = variants
    }
    
    init(_ moment: Moment,
         _ variant: Str) {
        self.init(moment, [variant])
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

