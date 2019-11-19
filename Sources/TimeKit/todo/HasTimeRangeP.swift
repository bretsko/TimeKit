//
//
//
//public protocol HasTimeRangeP {
//    var range: TimeRange {get}
//}
//public extension HasTimeRangeP {
//
//    var from: Time {
//        return range.from
//    }
//    var to: Time {
//        return range.to
//    }
//}
//
//public protocol HasMutTimeRangeP: HasTimeRangeP {
//    var range: TimeRange {get set}
//}
////TODO:
////public extension HasMutTimeRangeP {}
//
//public protocol TimeRangeHashableT: Hashable, HasTimeRangeP {}
//
//public extension TimeRangeHashableT {
//func hash(into hasher: inout Hasher) {
//        hasher.combine(range)
//}
//}
//
