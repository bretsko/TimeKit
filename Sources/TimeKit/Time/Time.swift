
@_exported import MomentKit
@_exported import AnyPeriodKit
@_exported import RecurrenceKit


/// Time can represent any time or time period, some cases are translatable to Date / DateInterval / TimeDuration 
public enum Time: TimeP, Hashable {
    //TODO: add CustomStringConvertible
    
    case moment(Moment)
    
    case period(AnyPeriod)
    
    case recurring(Recurrence)
    
    // ??
    //case unknown
}

public extension Time {
    
    init(_ moment: Moment) {
        self = .moment(moment)
    }
    
    init(_ period: AnyPeriod) {
        self = .period(period)
    }
    
    init(_ recurring: Recurrence) {
        self = .recurring(recurring)
    }
}


public extension AnyPeriod {
    var time: Time {
        Time(self)
    }
}
public extension Moment {
    var time: Time {
        Time(self)
    }
}
public extension Recurrence {
    var time: Time {
        Time(self)
    }
}
