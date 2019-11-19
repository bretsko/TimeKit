


/// TimeDuration can represents a certain amount of TimeUnits
/// for ex. 5.5 minutes, seconds
public struct TimeDuration: Hashable {
    //TODO: add CustomStringConvertible
    // consider adding Comparable
    
    public var value: Double
    
    public var unit: DurationUnit
}
public extension TimeDuration {
    
    init(_ value: Double,
         _ unit: DurationUnit) {
        self.value = value
        self.unit = unit
    }
    
//    var unitDuration: UnitDuration? {
//        //TODO: see https://developer.apple.com/documentation/foundation/unitduration
//        
//        fatalError()
//    }
}

// ??
//public extension WeekDay {
//
//    func timePeriod(numWeekDays: Double) -> TimeDuration {
//        return TimeDuration(numWeekDays, .weekDay(self))
//    }
//}
//
//public extension Month {
//
//    func timePeriod(numMonths: Double) -> TimeDuration {
//        return TimeDuration(numMonths, .monthName(self))
//    }
//}
