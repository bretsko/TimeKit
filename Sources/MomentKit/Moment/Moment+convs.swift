

public extension Moment {
    
    // isPresent
    var isNow: Bool {
        return self == .now
    }
    var isNever: Bool {
        return self == .never
    }
    
    
    /// any time(moment) is possible
    var isAnytime: Bool {
        return self == .anytime
    }
    
    var isAlways: Bool {
        return self == .always
    }
    /// some unknown time(moment)
    var isSome: Bool {
        return self == .some
    }
    
    
    /// in general
    var isFuture: Bool {
        switch self {
        case .next:
            return true
        default:
            return false
        }
    }
    
    /// in general
    var isPast: Bool {
        switch self {
        case .previous:
            return true
        default:
            return false
        }
    }
    
    //TODO: consider adding somePeriod
    
    var isDate: Bool {
        switch self {
        case .date:
            return true
        default:
            return false
        }
    }
}



