

public extension WeekDay {
    
    
    var allCasesSorted: [Int] {
        WeekDay.allCases.sorted().map{$0.int}
    }
    
    
    /// Adds a number of days to the current weekday and returns the new weekday.
    /// returns nil if invalid value provided
    func adding(days: Int) -> WeekDay? {
        let normalized = days % 7        
        let num = ((int + normalized + 7 - 1) % 7) + 1
        return WeekDay(num)
    }
    
    /// Adds a number of days to the current weekday and returns the new weekday.
    /// returns false if invalid value provided
    @discardableResult
    mutating func add(days: Int) -> Bool {
        if let val = adding(days:days) {
            self = val
            return true
        }
        return false
    }
    
    
    //MARK: subtract
    
    /// Subtracts a number of days from the current weekday and returns the new weekday.
    /// returns nil if invalid value provided
    func subtracting(days: Int) -> WeekDay? {
        adding(days: -(days % 7))
    }
    
    /// Subtracts a number of days from the current weekday and returns the new weekday.
    /// returns false if invalid value provided
    @discardableResult
    mutating func subtract(days: Int) -> Bool {
        if let val = subtracting(days:days) {
            self = val
            return true
        }
        return false
    }
}

//   //TODO: init with lowercase, and diff modes (Calendar.SymbolFormat)
//
//    /// - Parameter index: index of the weekDay in given calendar
//    init(_ weekDayIndex: WeekDayIndex,
//         _ calendar: Calendar = Date.defaultCalendar,
//         _ locale: LID = Date.defaultLocale) {
//
//        calendar.firstWeekday
//        //        let index = weekDayIndex.rawValue - 1
//        //        var cal = calendar
//        //        cal.locale = locale
//        //        let str = cal.weekdaySymbols[index]
//
//        self.init(weekDayIndex, str)
//    }
//
//    /// - Parameter index: index of the weekDay in given calendar
//    init(_ index: WeekDayIndex,
//         _ kalendar: Kalendar = Date.defaultKalendar) {
//        self.init(index: index, kalendar.calendar, kalendar.locale)
//    }



//TODO: change to use firstWeekDay logic, for ex. in Israel Sunday is firstWeekDay
/// returns order of this wekday in given calendar's weekdaySymbols array
//    func order(in calendar: Calendar = Date.defaultCalendar,
//               _ locale: LID = Date.defaultLocale) -> Int? {
//        var cal = calendar
//        cal.locale = locale
//
//        return cal.weekdaySymbols.enumerated().first(where: { (idx, str) in
//            //WeekDay(rawValue: str) != nil
//        })?.offset
//    }


//TODO: consider adding interface to get the data below

/// describes ordinal position within the month unit of the corresponding weekday unit.
/// For example, in the Gregorian calendar a weekday ordinal unit of 2 for a weekday unit 3 indicates “the second Tuesday in the month”.
//    var weekdayOrdinal: Int {
//        return Date().componentValue(.weekdayOrdinal)
//    }
//
//    var weekOfMonth: Int {
//        return Date().componentValue(.weekOfMonth)
//    }
//
//    var weekOfYear: Int {
//        return Date().componentValue(.weekOfYear)
//    }

