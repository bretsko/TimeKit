

public protocol HasTimeP {
    
    var time: Time {get}
}

public extension HasTimeP {
    
    var _moment: Moment? {
        time._moment
    }
    var _period: AnyPeriod? {
        time._period
    }
    var _recurring: Recurrence? {
        time._recurring
    }
    
    //MARK: -
    
    var isMoment: Bool {
        time.isMoment
    }
    var isPeriod: Bool {
        time.isPeriod
    }
    var isRecurring: Bool {
        time.isRecurring
    }
    
    //TODO:
    /// in general
    //    var isPast: Bool {
    //         time.isPast
    //    }
}


//public protocol HasMutTimeP: HasAnyTimeP {
//    var time: Time {get set}
//}
////public extension HasMutTimeP {}
//
//
//public protocol TimeHashableT: HasAnyTimeP, Hashable {}
//public extension TimeHashableT {
//func hash(into hasher: inout Hasher) {
//        hasher.combine(time)
//}
//}
//
//public protocol TimeComparableT: HasAnyTimeP, Comparable {}
//public extension TimeComparableT {
//    static func < (lhs: Self, rhs: Self) -> Bool {
//         lhs.anyTime < rhs.anyTime
//    }
//}
