
@_exported import MinimalBase



public extension Calendar {
    
        
    var localizedMonths: [Month : String ] {
        return Dictionary(uniqueKeysWithValues: zip(Month.allCases, monthSymbols))
    }
    
    var localizedWeekDays: [WeekDay : String ] {
        return Dictionary(uniqueKeysWithValues: zip(WeekDay.allCases, weekdaySymbols))
    }
    
    //MARK: -
    
    static var weekDays: [WeekDay] {
        return WeekDay.allCases
    }
    
    static var months: [Month] {
        return Month.allCases
    }
    
    
    //MARK: -
    
    //    static var weekEnds: [WeekDay] {
    //        return WeekDay.allCases
    //    }
    //    static var weekEnds: [WeekDay] {
    //           return WeekDay.allCases
    //       }
    
    var firstWeekdaySymbol: WeekDay {
        return WeekDay(firstWeekday)
    }
}

//TODO: move somewhere
extension Int {
    
    /// true if current value means a leap year
    var isLeapYear: Bool {
        return Year(self).isLeap
    }
}


//   //TODO: init with lowercase, and diff modes (Calendar.SymbolFormat)
//
//    /// - Parameter index: index of the weekDay in given calendar
//    init(_ weekDayIndex: WeekDayIndex,
//         _ calendar: Calendar = Date.defaultCalendar,
//         _ locale: Locale = Date.defaultLocale) {
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
//               _ locale: Locale = Date.defaultLocale) -> Int? {
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

