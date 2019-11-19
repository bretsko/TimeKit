
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
    
    //MARK: - TimeP -
    
    var timeClass: TimeClass {
        fatalError()
    }
    
    func translate(into lang: LocaleID) -> [String]? {
        fatalError()
    }
    
    /// tries to interpret a given string in specified language
    init?(_ timeString: String, _ lang: LocaleID) {
        fatalError()
    }
}


public extension AnyPeriod {
    var time: Time {
        return Time(self)
    }
}
public extension Moment {
    var time: Time {
        return Time(self)
    }
}
public extension Recurrence {
    var time: Time {
        return Time(self)
    }
}
