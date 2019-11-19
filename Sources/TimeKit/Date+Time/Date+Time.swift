


public extension Date {
    
    //TODO: also add funcs to check if the date belongs to
    // - period
    // - is moment
    // - inside the recurring interval
    
    // also need more convs
    
    /// in some cases it's this time
    func belongs(to time: Time) -> Bool {
        switch time {
        case .moment(let moment):
            return isMoment(moment)
        case .period(let period):
            return belongs(to: period)
        case .recurring(let recurrence):
            return belongs(to: recurrence)
        }
    }
}

