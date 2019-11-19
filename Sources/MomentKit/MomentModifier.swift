//
//
//import MinimalBase
//
//
///// can be applied to Moment to change it or get a new one 
//public enum MomentModifier: Hashable {
//    
//    //TODO: CustomStringConvertible
//    
//    /// produces period, for ex. "current year / month"
//    case current(DurationUnit)
//    
//    /// produces period, for ex. "previous/last year"
//    case previous(DurationUnit)
//    
//    /// produces period, for ex. "next year"
//    case next(DurationUnit)
//    
//    
//    /// produces past moment, past, for ex. "3 years ago"
//    case subtracting(DurationUnit)
//    
//    /// produces future moment, for ex. "in 3 years"
//    case adding(DurationUnit)
//    
//    
//    // remove, it's impl-d in Recurrence
//    /// produces recurring time, for ex. "every 3.5 years"
//    /// if the value is nil means "every year"
//    // case every(DurationUnit?)
//}
