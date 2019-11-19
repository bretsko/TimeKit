


public extension Time {
    
    var _moment: Moment? {
        switch self {
        case .moment(let moment):
            return moment
        default:
            return nil
        }
    }
    
    var _period: AnyPeriod? {
        switch self {
        case .period(let period):
            return period
        default:
            return nil
        }
    }
    
    var _recurring: Recurrence? {
        switch self {
        case .recurring(let recurring):
            return recurring
        default:
            return nil
        }
    }
    
    //MARK: -
    
    var isMoment: Bool {
        _moment != nil
    }
    var isPeriod: Bool {
        _period != nil
    }
    var isRecurring: Bool {
        _recurring != nil
    }
    
    //HasTimeClassP
    var timeClass: TimeClass {
        switch self {
        case .moment(let moment):
            return moment.timeClass
        case .recurring(let recurrence):
            return recurrence.timeClass
        case .period(let period):
            return period.timeClass
        }
    }
}
