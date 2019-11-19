


public protocol HasMomentP {
    
    var moment: Moment {get}
}

//public extension HasMomentP {
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


//public protocol HasMutMomentP: HasMomentP {
//    var anyMoment: Moment {get set}
//}
////public extension HasMutMomentP {}



public protocol MomentHashableT: HasMomentP, Hashable {}
public extension MomentHashableT {
    func hash(into hasher: inout Hasher) {
        hasher.combine(moment)
    }
}

//public protocol MomentComparableT: HasMomentP, Comparable {}
//public extension MomentComparableT {
//    static func < (lhs: Self, rhs: Self) -> Bool {
//        return lhs.moment < rhs.moment
//    }
//}
