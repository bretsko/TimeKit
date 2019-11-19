


public protocol HasDayTime {
 
    var dayTime: DayTime {get}
}

public extension HasDayTime {

    // may conflict ?
//    var hour: Bool {
//        return dayTime.hour
//    }
}

//
//extension Date: HasDayTime {
//    public var dayTime: HasDayTime {
//        fatalError()
//    }
//}
