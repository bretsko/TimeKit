

@_exported import MeasureKit

public typealias DurationShortUnit = DurationMUnit

protocol DurationUnitP: StrEnumP, HasUnitDurationP {}

//typealias DurationUnitT = DurationUnitP & StrEnumT //HasAllFormsT



/// Time units can be used to mean a moment or a period, nanosecond is not impl-d to allow second be used as period, consisting of nanoseconds
public enum DurationUnit: DurationUnitP, HasAllFormsT {
    //TODO: add CustomStringConvertible
     // consider adding Comparable

    /// hours, minutes, seconds, milliseconds, microseconds, nanoseconds , picoseconds
    case short(DurationShortUnit)
    
    
    case long(DurationLongUnit)

    
    var child: DurationUnitP {
        switch self {
        case .short(let a):
            return a
        case .long(let a):
            return a
        }
    }
}

public extension DurationUnit {
    
    init?(rawValue: Str) {
        fatalError()
        //case short(DurationMUnit)
        //case long(DurationLongUnit)
    }
    
    var rawValue: Str {
        child.rawValue
    }
    
    // HasUnitDurationP
    /// converts to biggest unit
    var unitDuration: UnitDuration {
        fatalError()
    }
    
    func timeDuration(_ value: Double) -> TimeDuration {
        TimeDuration(value, self)
    }
    
    static var allForms: Set<DurationUnit> {
        fatalError()
        //case short(DurationMUnit)
        //case long(DurationLongUnit)
    }
}
