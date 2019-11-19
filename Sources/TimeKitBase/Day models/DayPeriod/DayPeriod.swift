
import MinimalBase


// https://github.com/FormatterKit/DayPeriodFormatter
public enum DayPeriod: String, StrEnumT {
    
    /// approx until 6
    case morning1
    
    //  35 cases
    /// approx 6 - 12
    case morning2
    
    //  75 cases
    /// approx until 12
    case afternoon1
    
    // 17 cases
    /// approx from 14
    case afternoon2
    
    /// approx from 16
    case evening
    
    /// from midnight
    case night
    
    
    /// daybreak
    case dawn
    
    /// the period of twilight between complete darkness and sunrise (or sunset)
    case dusk
    
    /// the period after sunset, or before sunrise when all or part of the sky is illuminated by reflected sunlight, though the sun itself is not visible above the horizon.
    case twilight
    
    // removed - 4 cases only in rare langs, approx from 18
    //case evening2
    
    // removed - 7 cases only in rare langs, approx from 3-4
    //case night2
}

public extension DayPeriod {
    
    /// if locale param is nil uses current locale
    func dayInterval(in locale: LocaleID = .current) -> DayInterval {
        fatalError()
    }
    
    
    /// if locale param is nil uses current locale
    //func period(for hour: Int, in locale: LocaleID?) -> DayPeriod
    
    //MARK: convs
    
    var isMorning: Bool {
        return self == .morning1 || self == .morning2
    }
    var isAfternoon: Bool {
        return self == .afternoon1 || self == .afternoon2
    }
    var isEvening: Bool {
        return self == .evening
    }
    var isNight: Bool {
        return self == .night
    }
    
    var isTwilight: Bool {
        return self == .twilight
    }
    var isDusk: Bool {
        return self == .dusk
    }
    var isDawn: Bool {
        return self == .dawn
    }
}
