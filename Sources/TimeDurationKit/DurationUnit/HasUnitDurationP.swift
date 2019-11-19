

public protocol HasUnitDurationP {
    
    var unitDuration: UnitDuration {get}
}

extension DurationShortUnit: DurationUnitP {
    
    public var unitDuration: UnitDuration {
        fatalError()
    }
}

extension DurationLongUnit: DurationUnitP {
    
    public var unitDuration: UnitDuration {
        fatalError()
    }
}

