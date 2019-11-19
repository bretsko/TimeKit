//
//
////
///// can be applied to AnyPeriod to change it or get a new one
//public enum AnyPeriodModifier: Hashable {
//
//    /// produces new period
//    /// if stored value is nil, means simply this period
//    /// if not nil - means "this + unit (year, month, etc)"
//    case current(DurationUnit?)
//
//    //TODO: consider making optional -> meaning a period before some period
//    /// produces new past period, for ex. "3 years ago"
//    case subtracting(DurationUnit)
//
//    //TODO: consider making optional -> meaning a period before some period
//    /// produces new future period, for ex. "in 3 years"
//    case adding(DurationUnit)
//
//
//    /// some unknown time(moment)
//    case some
//
//    //TODO: consider adding somePeriod
//
//    /// any time(moment) is possible
//    case any
//    //TODO: consider adding anyPeriod
//
//
//    //MARK: -
//
//    /// means any start of the period
//    case start
//
//    /// means any end of the period
//    case end
//
//    /// means any middle of the period
//    case middle
//
//
//    /// means "a longer period", longer than some other
//    /// for ex. "over 3 years"
//    case longer
//
//    /// means "a shorter period", shorter than some other
//    /// for ex. "below 3 years"
//    case shorter
//
//    //TODO: add
//    // much longer / shorter
//    // a little longer / shorter
//
//
//    //    /// produces recurring time, for ex. "3.5 years"
//    //    /// if the value is nil means "every year"
//    //    case every(DurationUnit?)
//
//    //    /// all past or past / last year, month, etc
//    //    case past(DurationUnit?)
//    //
//    //    /// all future or future / next year, month, etc
//    //    case future(DurationUnit?)
//}
