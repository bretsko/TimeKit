


public protocol HasDayInterval {
 
    var dayInterval: DayInterval {get}
}

public extension HasDayInterval {

    // may conflict ?
//    var hour: Bool {
//        return dayInterval.hour
//    }
}

//public extension HasDayInterval {
//
//    var isNoon: Bool {
//        return dayMoment.isNoon
//    }
//    var isMidnight: Bool {
//        return dayMoment.isMidnight
//    }
//    var isSunrise: Bool {
//        return dayMoment.isSunrise
//    }
//    var isSunset: Bool {
//        return dayMoment.isSunset
//    }
//}
//
//extension Date: HasDayInterval {
//    public var dayInterval: DayInterval {
//        fatalError()
//    }
//}
