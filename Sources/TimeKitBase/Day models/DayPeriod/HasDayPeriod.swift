
import MinimalBase


public protocol HasDayPeriod {
 
    var dayPeriod: DayPeriod {get}
}

public extension HasDayPeriod {
    
    var isMorning: Bool {
        return dayPeriod.isMorning
    }
    var isAfternoon: Bool {
        return dayPeriod.isAfternoon
    }
    var isEvening: Bool {
        return dayPeriod.isEvening
    }
    var isNight: Bool {
        return dayPeriod.isNight
    }
}

extension Date: HasDayPeriod {
    public var dayPeriod: DayPeriod {
        fatalError()
    }
}
