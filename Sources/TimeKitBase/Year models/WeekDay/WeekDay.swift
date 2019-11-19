


/// any week day, with no regards to calendar or locale
/// It can be used for calculations using only WeekDay logic, without reference to specific Date
/// Only 7 days weeks are handled
public enum WeekDay: Int, IntEnumT, HasDescrP {
    
    // these indices are tied to weekdaySymbols (in Calendar)
    // But property firstWeekDay (in Calendar) starts counting from index 1
    case sunday //= 0
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    
    //TODO: consider making public and change 0-6 -> 1-7

    /// inits with index in weekDaySymbol array
    /// index must be between 0 and 6, otherwise it crashes
    init(_ weekDayIndex: Int) {
        crashIf(weekDayIndex < 0 || weekDayIndex > 6)
        self.init(rawValue: weekDayIndex - 1)!
    }
}

public extension WeekDay {
    
    /// value in English locale
    var descr: Str {
        switch self {
        case .sunday:
            return "Sunday"
        case .monday:
            return "Monday"
        case .tuesday:
            return "Tuesday"
        case .wednesday:
            return "Wednesday"
        case .thursday:
            return "Thursday"
        case .friday:
            return "Friday"
        case .saturday:
            return "Saturday"
        }
    }
}

//   //TODO: init with lowercase, and diff modes (Calendar.SymbolFormat)


