

import MinimalBase

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
}
