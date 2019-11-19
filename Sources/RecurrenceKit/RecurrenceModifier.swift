//
//
//import MinimalBase
//
///// can be applied to Recurrence to change it or get a new one
//public enum RecurrenceModifier: Hashable {
//    
//    /// produces repeating period which is more often given number of times
//    /// for ex. 4 times a week X 2 time less often -> 2 times a week
//    case timesMoreOften(Double)
//    
//    /// produces repeating period which is less often given number of times
//    /// for ex. 4 times a week X 2 time more often -> 8 times a week
//    case timesLessOften(Double)
//    
//    
//    /// prolongs the repeating period by a given duration, for ex 3.5 minutes
//    /// for ex. every 2 minutes X longerBy 2, minute -> every 4 minutes
//    case longerBy(TimeDuration) //or (Double, DurationUnit)
//    
//    /// shortens the repeating period by a given duration, for ex 3.5 minutes
//    /// for ex. every 4 minutes X shorterBy 2, minute -> every 2 minutes
//    case shorterBy(TimeDuration) //or (Double, DurationUnit)
//
//    
//    case limitedBy(start: Date?, end: Date?)
//    
//    //case filterEvery(Double)
//}
