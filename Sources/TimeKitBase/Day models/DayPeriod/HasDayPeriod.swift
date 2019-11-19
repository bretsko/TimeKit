


public protocol HasDayPeriod {
    
    var dayPeriod: DayPeriod {get}
}

public extension HasDayPeriod {
    
    var isMorning: Bool {
        dayPeriod.isMorning
    }
    var isAfternoon: Bool {
        dayPeriod.isAfternoon
    }
    var isEvening: Bool {
        dayPeriod.isEvening
    }
    var isNight: Bool {
        dayPeriod.isNight
    }
}

extension Date: HasDayPeriod {
    public var dayPeriod: DayPeriod {
        fatalError()
    }
}
