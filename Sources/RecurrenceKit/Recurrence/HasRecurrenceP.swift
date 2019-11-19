


public protocol HasRecurrenceP {
    
    var recurrence: Recurrence {get}
}

//public extension HasRecurrenceP {
//
//    var isUnknown: Bool {
//        return time.isUnknown
//    }
//}


//public protocol HasMutRecurrenceP: HasRecurrenceP {
//    var recurrence: Recurrence {get set}
//}
////public extension HasMutRecurrenceP {}
//
//
//public protocol RecurrenceHashableT: HasRecurrenceP, Hashable {}
//public extension RecurrenceHashableT {
//func hash(into hasher: inout Hasher) {
//        hasher.combine(recurrence)
//}
//}
//
//public protocol RecurrenceComparableT: HasRecurrenceP, Comparable {}
//public extension RecurrenceComparableT {
//    static func < (lhs: Self, rhs: Self) -> Bool {
//        return lhs.recurrence < rhs.recurrence
//    }
//}
