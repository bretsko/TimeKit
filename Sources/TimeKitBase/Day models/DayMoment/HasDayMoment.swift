


public protocol HasDayMoment {
 
    var dayMoment: DayMoment {get}
}

public extension HasDayMoment {
    
    var isNoon: Bool {
        return dayMoment.isNoon
    }
    var isMidnight: Bool {
        return dayMoment.isMidnight
    }
    var isSunrise: Bool {
        return dayMoment.isSunrise
    }
    var isSunset: Bool {
        return dayMoment.isSunset
    }
}

extension Date: HasDayMoment {
    public var dayMoment: DayMoment {
        fatalError()
    }
}
