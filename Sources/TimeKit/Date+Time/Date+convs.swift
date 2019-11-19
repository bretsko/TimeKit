
@_exported import TimeKitBase


public extension Date {
    
    var firstDayOfWeek: Int? {
        date(at: .startOfWeek)?.day
    }
    
    var lastDayOfWeek: Int? {
        date(at: .endOfWeek)?.day
    }
    
    /// Creates the date at the given week number and week day preserving smaller comps (hour, minute, seconds)
    ///
    /// For example: to get the third friday of next month
    ///         let today = Date()
    ///         let result = today.date(at:weekdayOrdinal: 3, weekday: .friday, monthNumber: today.month + 1)
    ///
    /// - Parameters:
    ///     - weekdayOrdinal: the week number (by set position in a recurrence rule)
    ///     - monthNumber: a number from 1 to 12 representing the month, optional parameter
    func date(atWeekdayOrdinal weekdayOrdinal: Int,
              _ weekday: WeekDay,
              monthNumber: Int? = nil,
              yearNumber: Int? = nil) -> Date? {
        
        var result = Date(year: yearNumber ?? year,
                          month: monthNumber ?? month,
                          day: 1,
                          hour: hour,
                          minute: minute,
                          second: second)
        
        guard result != nil else {
            return nil
        }
        
        var requiredWeekNum = weekdayOrdinal
        if result!.weekDaySymbol == weekDaySymbol {
            requiredWeekNum -= 1
        }
        
        while requiredWeekNum > 0 {
            result = result!.nextWeekday(weekday)
            requiredWeekNum -= 1
        }
        
        return result
    }
    
    /// Returns the date on the given day of month preserving smaller comps
    func date(atDayOfMonth dayOfMonth: Int,
              monthNumber: Int? = nil,
              yearNumber: Int? = nil) -> Date? {
        Date(year: yearNumber ?? year,
             month: monthNumber ?? month,
             day: dayOfMonth,
             hour: hour, minute: minute, second: second)
    }
    
    /// Returns the date after given number of weeks on the given day of week
    func dateAfter(numWeeks: Int,
                   on weekday: WeekDay) -> Date? {
        
        guard var r = adding(numWeeks, of: .weekOfMonth) else {
            return nil
        }
        let newWeekDay = r.weekDaySymbol
        
        if newWeekDay == weekday {
            return r
            
        } else if newWeekDay.int > weekday.int,
                  let newValue = r.adding(-1, of: .weekOfMonth) {
            
            r = newValue
        }
        return r.nextWeekday(weekday)
    }
    
    // MARK: - next
    
    /// Returns the next weekday preserving smaller comps
    func nextWeekday(_ weekday: WeekDay) -> Date? {
        var comps = DateComps()
        comps.weekday = weekday.int
        comps.hour = hour
        comps.second = second
        comps.minute = minute
        
        return calendar.nextDate(after: self,
                                 matching: comps,
                                 matchingPolicy: .nextTimePreservingSmallerComponents)
    }
    
    /// Returns next date with the given weekday and the given week number
    func next(_ weekday: WeekDay,
              withWeekOfMonth weekNumber: Int,
              monthNumber: Int? = nil) -> Date? {
        
        guard let result = date(atWeekdayOrdinal: weekNumber,
                                weekday,
                                monthNumber: monthNumber) else {
            return nil
        }
        
        guard result <= self else {
            return result
        }
        
        if let monthNum = monthNumber {
            
            return date(atWeekdayOrdinal: weekNumber, weekday,
                        monthNumber: monthNum,
                        yearNumber: year + 1)
        }
        return date(atWeekdayOrdinal: weekNumber, weekday,
                    monthNumber: month + 1)
    }
    
    /// Returns the next day of month preserving smaller comps (hour, minute, seconds)
    func next(dayOfMonth: Int,
              monthOfYear: Int? = nil) -> Date? {
        var comps = DateComps()
        comps.day = dayOfMonth
        comps.month = monthOfYear
        comps.hour = hour
        comps.second = second
        comps.minute = minute
        
        return calendar.nextDate(after: self,
                                 matching: comps,
                                 matchingPolicy: .nextTimePreservingSmallerComponents)
    }
    
    
    //MARK: static cotrs
    
    static var today: Date {
        Date()
        //TODO: consider creating with only day, month and year components
        //        return Date(year: now.year,
        //                    month: now.month,
        //                    day: now.day)!
    }
    
    static var yesterday: Date {
        (today - 1.days)!
    }
    
    static var tomorrow: Date {
        (today + 1.days)!
    }
    
    //MARK: static dates
    
    /// Return Ordered list of the dates for given weekday inside given month of specified year.
    /// If invalid date is provided - returns nil
    /// Ie. get me all the saturdays of Feb 2018.
    static func dates(for weekday: WeekDay,
                      inMonth month: Int,
                      ofYear year: Int,
                      _ calendar: Calendar = Date.defaultCalendar) -> [Date]? {
        
        guard let fromDate = Date(year: year,
                                  month: month,
                                  day: 1,
                                  hour: 0,
                                  minute: 0) else {
            return nil
        }
        
        guard let toDate = fromDate.date(at: .endOfMonth) else {
            return nil
        }
        return dates(for: weekday,
                     from: fromDate,
                     to: toDate)
    }
    
    /// Returns ordered list of dates for the given weekday inside the given date range.
    static func dates(for weekday: WeekDay,
                      from startDate: Date,
                      to endDate: Date,
                      _ calendar: Calendar = Date.defaultCalendar) -> [Date]? {
        
        let startDateWeekDay = startDate.componentValue(.weekday, with: calendar)
        let weekdayOffset = weekday.int
        let offset = (weekdayOffset - startDateWeekDay + 7) % 7
        
        let d = calendar.date(byAdding: DateComps(day: offset),
                              to: startDate)!
        
        let firstOccurrence = calendar.startOfDay(for: d)
        
        guard firstOccurrence.timeIntervalSince1970 < endDate.timeIntervalSince1970 else {
            return nil
        }
        var all = [firstOccurrence]
        while true {
            
            let nextDate = calendar.date(byAdding: DateComps(day: 7),
                                         to: all.last!)!
            
            guard nextDate < endDate else {
                break
            }
            all.append(nextDate)
        }
        return all.sth
    }
    
    
    
    //MARK: enumerateDates
    
    //??
    /// Enumerate dates between two intervals by adding specified time comps and return an array of dates.
    /// `startDate` interval will be the first item of the resulting array.
    /// The last item of the array is evaluated automatically and maybe not equal to `endDate`.
    ///
    /// - Parameters:
    ///   - increment: comps to add
    //    static func enumerateDates(from startDate: Date,
    //                               to endDate: Date,
    //                               increment: DateComps) -> [Date]? {
    //        return enumerateDates(from: startDate,
    //                                   to: endDate, increment: { _ in
    //                                    return increment
    //        })
    //    }
    
    //??
    /// Enumerate dates between two intervals by adding specified time comps defined by a function and return an array of dates.
    /// `startDate` interval will be the first item of the resulting array.
    /// The last item of the array is evaluated automatically and maybe not equal to `endDate`.
    ///
    /// - Parameters:
    ///   - increment: increment function. It get the last generated date and require a valida `DateComps` instance which define the increment
    //    static func enumerateDates(from startDate: Date,
    //                               to endDate: Date,
    //                               increment: ((Date) -> (DateComps))) -> [Date]? {
    //        var dates: [Date] = []
    //        var currentDate = startDate
    //
    //        while currentDate <= endDate {
    //            dates.append(currentDate)
    //            currentDate = (currentDate + increment(currentDate))!
    //        }
    //        return dates.sth
    //    }
}


