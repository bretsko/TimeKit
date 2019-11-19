


public protocol HasAnyPeriodP {
    
    var anyPeriod: AnyPeriod {get}
}

//public extension HasAnyPeriodP {
//
//    var isUnknown: Bool {
//        return time.isUnknown
//    }
//    var isNever: Bool {
//        return time.isNever
//    }
//    var isAnytime: Bool {
//        return time.isAnytime
//    }
//    var isRDate: Bool {
//        return time.isRDate
//    }
//    /// in general
//    var isFuture: Bool {
//        return time.isFuture
//    }
//    /// in general
//    var isPresent: Bool {
//        return time.isPresent
//    }
//    /// in general
//    var isPast: Bool {
//        return time.isPast
//    }
//}


//public protocol HasMutAnyPeriodP: HasAnyPeriodP {
//    var anyPeriod: AnyPeriod {get set}
//}
////public extension HasMutAnyPeriodP {}
//
//
//public protocol AnyPeriodHashableT: HasAnyPeriodP, Hashable {}
//public extension AnyPeriodHashableT {
//func hash(into hasher: inout Hasher) {
//        hasher.combine(anyPeriod)
//}
//}
//
//public protocol AnyPeriodComparableT: HasAnyPeriodP, Comparable {}
//public extension AnyPeriodComparableT {
//    static func < (lhs: Self, rhs: Self) -> Bool {
//        return lhs.anyPeriod < rhs.anyPeriod
//    }
//}
