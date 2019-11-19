
import MinimalBase

// Month?

/// any month, with no regards to calendar or locale
public enum Month: Int, CustomStringConvertible, CaseIterable {
    
    case january //= 0
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case october
    case november
    case december
    
    /// inits with index in weekDaySymbol array
    /// index must be between 0 and 11, otherwise it crashes
    init(_ monthIndex: Int) {
        crashIf(monthIndex < 0 || monthIndex > 11)
        self.init(rawValue: monthIndex - 1)!
    }
}

public extension Month {
    
    /// value in English locale
    var description: String {
        switch self {
        case .january:
            return "January"
        case .february:
            return "February"
        case .march:
            return "March"
        case .april:
            return "April"
        case .may:
            return "May"
        case .june:
            return "June"
        case .july:
            return "July"
        case .august:
            return "August"
        case .september:
            return "September"
        case .october:
            return "October"
        case .november:
            return "November"
        case .december:
            return "December"
        }
    }
}


//TODO: init with lowercase, and diff modes (Calendar.SymbolFormat)
