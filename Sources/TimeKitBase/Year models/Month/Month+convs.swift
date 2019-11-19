
import MinimalBase


public extension Month {
    
    /// index of the month in monthSymbol array
    var index: Int {
        return rawValue
    }
    
    var allCasesSorted: [Int] {
        return Month.allCases.map{$0.rawValue}
    }
    
    //MARK: -
    
    /// Adds a number of months to the current month and returns the new month.
    func adding(months: Int) -> Month? {
        let normalized = months % 12
        return Month((index + normalized + 12) % 12)
    }
    
    /// Adds a number of months to the current month and returns the new month.
    @discardableResult
    mutating func add(months: Int) -> Bool {
        if let val = adding(months: months) {
            self = val
            return true
        }
        return false
    }
    
    
    /// Subtracts a number of months from the current month and returns the new month.
    ///
    /// - Parameter months: number of months to subtract. May be negative, in which case it will be added
    func subtracting(months: Int) -> Month? {
        return adding(months: -(months % 12))
    }
    
    
    /// Subtracts a number of months from the current month and returns the new month.
    ///
    /// - Parameter months: number of months to subtract. May be negative, in which case it will be added
    @discardableResult
    mutating func subtract(months: Int) -> Bool {
        if let val = subtracting(months: months) {
            self = val
            return true
        }
        return false
    }
    
    
    //MARK: -
    
    /// Returns the number of days in this month for a given year
    func numberOfDays(forYear year: Int) -> Int {
        switch self {
        case .february:
            return Year(year).isLeap ? 29 : 28
        case .april, .june, .september, .november:
            return 30
        default:
            return 31
        }
    }
    
    
    //MARK: seasons
    
    //TODO:
    
    // winterMonths
    // summerMonths
    // springMonths
    // autumnMonths
    
    // isWinter
    // isSummer
    // isSpring
    // isAutumn
    
    //    static var months: [Month] {
    //        return Month.allCases
    //    }
}


//TODO: init with lowercase, and diff modes (Calendar.SymbolFormat)

//    /// - Parameter index: index of the month in given calendar (between 0 and 11)
//    init(index: Int,
//         _ calendar: Calendar = Date.defaultCalendar,
//         _ locale: Locale = Date.defaultLocale) {
//        crashIf(index < 0 || index > 11)
//
//        var cal = calendar
//        cal.locale = locale
//        let str = cal.monthSymbols[index]
//        //self.init(rawValue: str)! //TODO: test
//    }
//
//    /// - Parameter index: index of the month in given calendar (between 0 and 11)
//    init(index: Int,
//         _ kalendar: Kalendar = Date.defaultKalendar) {
//        self.init(index: index, kalendar.calendar, kalendar.locale)
//    }


/// returns order of this month in given calendar's monthSymbols array
//func order(in calendar: Calendar = Date.defaultCalendar,
//           _ locale: Locale = Date.defaultLocale) -> Int? {
//    var cal = calendar
//    cal.locale = locale
//
//    return cal.monthSymbols[index]
//}
