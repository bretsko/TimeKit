

import MinimalBase

public extension DurationUnit {
    
    var unitDuration: UnitDuration? {
        fatalError()
    }
    
    func timeDuration(_ value: Double) -> TimeDuration {
        return TimeDuration(value, self)
    }
}
