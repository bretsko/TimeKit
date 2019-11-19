
@_exported import DateKit


public extension HasDateCompsP {
    
    /// assumes default calendar
    var _weekday: WeekDay? {
        if let idx = weekday {
            return WeekDay(idx)
        }
        return nil
    }
    
    /// assumes default calendar
    var _month: Month? {
        if let idx = month {
            return Month(idx)
        }
        return nil
    }
    
    /// assumes default calendar
    var _year: Year? {
        if let y = year {
            return Year(y)
        }
        return nil
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

