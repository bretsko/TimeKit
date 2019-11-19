


public protocol HasTimeP {
    
    var time: Time {get}
}

//TODO: 
//public extension HasTimeP {
//    /// in general
//    var isPast: Bool {
//        return time.isPast
//    }
//}


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
//        return lhs.anyTime < rhs.anyTime
//    }
//}
