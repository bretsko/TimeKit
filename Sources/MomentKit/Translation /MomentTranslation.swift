

@_exported import MinimalBase
@_exported import TimeKitBase


/// Translation of time unit, each unit can have several translation variants
public struct MomentTranslation: Equatable {
    
    public var moment: Moment
    
    /// translation variants for current unit
    public var variants: [String]
    
    public init(_ moment: Moment,
                _ variants: [String]) {
        self.moment = moment
        self.variants = variants
    }
}

public extension MomentTranslation {
    
    init(_ moment: Moment,
         _ variant: String) {
        self.init(moment, [variant])
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

