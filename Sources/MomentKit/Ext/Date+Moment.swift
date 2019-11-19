


public extension Date {
    
    //TODO: also add funcs to check if the date belongs to
    // - period
    // - is moment
    // - inside the recurring interval
    
    // also need more convs
    
    //TODO: ??
    func isMoment(_ moment: Moment) -> Bool {
        fatalError()
    }
    
    
    /// Returns related date starting from the  attributes.
    func date(at moment: Moment) -> Date? {
        switch moment {
        case .startOfDay:
            return calendar.startOfDay(for: self)
            
        case .endOfDay:
            //??
            return adding(1, of: .day)?.date(at:.startOfDay)?.adding(-1, of: .second)
            
        case .startOfWeek:
            let cmps = comps([.yearForWeekOfYear, .weekOfYear])
            return calendar.date(from: cmps)!
            
        case .endOfWeek:
            return date(at:.startOfWeek)?.adding(7, of: .day)?.adding(-1, of: .second)
            
        case .startOfMonth:
            return changing([.day: 1, // 0 ??
                .hour: 1, // 0 ??
                .minute: 1, // 0 ??
                .second: 1, // 0 ??
                .nanosecond: 1]) // 0 ??
            
        case .endOfMonth:
            guard let monthDays = monthDays else {
                return nil
            }
            return adding((monthDays - day), of: .day)?
                .resetting(toEndOf: .day)
            
        case .adding1Day:
            return adding(1, of: .day)
            
        case .nextDayAtStart:
            return adding(1, of: .day)?
                .resetting(toStartOf: .day)
            
        case .subtracting1Day:
            return adding(-1, of: .day)
            
        case .prevDayAtStart:
            return adding(-1, of: .day)?
                .resetting(toStartOf: .day)
            
        case .prevMonth:
            return adding(-1, of: .month)?
                .resetting(toStartOf:.month)
                .resetting(toStartOf:.day)
            
        case .nextMonth:
            return adding(1, of: .month)?
                .resetting(toStartOf:.month)
                .resetting(toStartOf:.day)
            
        case .prevWeek:
            return adding(-1, of: .weekOfYear)?
                .resetting(toStartOf:.weekOfYear)
                .resetting(toStartOf:.day)
            
        case .nextWeek:
            return adding(1, of: .weekOfYear)?
                .resetting(toStartOf:.weekOfYear)
                .resetting(toStartOf:.day)
            
        case .nextYear:
            return adding(1, of: .year)?.resetting(toStartOf:.year)
            
        case .prevYear:
            return adding(-1, of: .year)?.resetting(toStartOf:.year)
            
        case .nextDSTTransition:
            return timeZone.nextDaylightSavingTimeTransition(after: self)
            
        default:
            fatalError()
            //TODO:
            //        case .next(let unit, let within):
            //        case .nextMinute(let minute):
            //            //??
            //            //            let minutes = (minute + next / 2) / next * next
            //            //            return changing([.minute: minutes])
            //
            //            var comps = DateComps()
            //            comps.minute = minute
            //
            //            return calendar.nextDate(after: self,
            //                                     matching: comps,
            //                                     matchingPolicy: .nextTimePreservingSmallerComponents)
            //
            //        case .nextHour(let hour):
            //            //??
            //            //            let hours = (hour + next / 2) / next * next
            //            //            return changing([.hour: hours, .minute: 0])!
            //
            //            var comps = DateComps()
            //            comps.hour = hour
            //
            //            return calendar.nextDate(after: self,
            //                                     matching: comps,
            //                                     matchingPolicy: .nextTimePreservingSmallerComponents)
            //
            //        case .nextWeekday(let weekday):
            //
            //            //TODO: test this
            //            //var cal = calendar
            //            //?? Sunday = 0, Saturday = 6
            //            //cal.firstWeekday = 1
            //            var comps = DateComps()
            //            comps.weekday = weekday.index
            //
            //            return calendar.nextDate(after: self,
            //                                     matching: comps,
            //                                     matchingPolicy: .nextTimePreservingSmallerComponents)
            //
            //        case .lastWeekday(let weekday):
            //
            //            //TODO: test this
            //            //var cal = calendar
            //            //?? Sunday = 0, Saturday = 6
            //            //cal.firstWeekday = 1
            //            var comps = DateComps()
            //            comps.weekday = weekday.index
            //
            //            return calendar.nextDate(after: self,
            //                                     matching: comps,
            //                                     matchingPolicy: .previousTimePreservingSmallerComponents)
            //
            //        case .nextMonth(let month):
            //
            //            //TODO: test this
            //            //var cal = calendar
            //            //?? Sunday = 0, Saturday = 6
            //            //cal.firstWeekday = 1
            //            var comps = DateComps()
            //            comps.month = month.index
            //
            //            return calendar.nextDate(after: self,
            //                                     matching: comps,
            //                                     matchingPolicy: .nextTimePreservingSmallerComponents)
            //
            //        case .lastMonth(let month):
            //
            //            //TODO: test this
            //            //var cal = calendar
            //            //?? Sunday = 0, Saturday = 6
            //            //cal.firstWeekday = 1
            //            var comps = DateComps()
            //            comps.month = month.index
            //
            //            return calendar.nextDate(after: self,
            //                                     matching: comps,
            //                                     matchingPolicy: .previousTimePreservingSmallerComponents)
        }
    }
}
