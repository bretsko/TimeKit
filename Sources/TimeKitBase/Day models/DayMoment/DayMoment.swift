

@_exported import TimeDurationKit

public enum DayMoment: String, StrEnumT {
    
    case midnight
    case noon
    
    case sunrise
    case sunset
}

public extension DayMoment {
    
    /// finds time of the day when this DayMoment happens
    /// default locale param is current
    func dayTime(in locale: LocaleID = .current) -> DayTime {
        fatalError()
    }
    
    /// if locale param is nil uses current locale
    // func moment(for hour: Int, in locale: LocaleID?) -> DayMoment
    
    
    //MARK: convs
    
    var isMidnight: Bool {
        return self == .midnight
    }
    var isNoon: Bool {
        return self == .noon
    }
    
    var isSunrise: Bool {
        return self == .sunrise
    }
    var isSunset: Bool {
        return self == .sunset
    }
}
