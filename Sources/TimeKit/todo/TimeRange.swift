//
//
//
//public struct TimeRange: Hashable { //HasDescrP
//      
//    public var from: Time
//    public var to: Time
//}
//
//public extension TimeRange {
//    
//    /// crashes if from >= to
//     init(_ from: Time, _ to: Time) {
////        guard  from < to else {
////            fatalError()
////        }
//        self.from = from
//        self.to = to
//    }
//    
//    //??
////     var dates: [Time] {
////        return Array(from...to)
////    }
//    
//    //TODO: len days, weeks, etc
////     var len: Int {
////        return from - len
////    }
//    
//    
//    //MARK: -
//    
//    /// wider or equal
////     func isSuperSet(of range: Rng,
////                           strict: Bool = false) -> Bool {
////        if strict {
////            return from < range.from && to > range.to
////        }
////        return from <= range.from && to >= range.to
////    }
////
////    /// narrower or equal
////     func isSubSet(of range: Rng,
////                         strict: Bool = false) -> Bool {
////        if strict {
////            return from > range.from && to < range.to
////        }
////        return from >= range.from && to <= range.to
////    }
////
////    /// if supplied indices are wider in any direction, they override the old indices
////    @discardableResult
////     mutating func merge(with range: Rng) -> Bool {
////        guard range.from < from || range.to > to else {
////            return false
////        }
////        if range.from < from {
////            from = range.from
////        }
////        if range.to > to {
////            to = range.to
////        }
////        return true
////    }
//    
//    //MARK:
//    
//     var descr: String {
//        return "TimeRange from: \(from), to: \(to)"
//    }
//}
//
//
//
//
//
