
@_exported import DateKit


public extension Date {
    
    //MARK: comp names
    
    //TODO: 
//    func getMonth(_ mode: Calendar.SymbolFormat = .standard,
//                  _ calendar: Calendar = Date.defaultCalendar,
//                  _ locale: LID = Date.defaultLocale) -> Month? {
//        return Month(index: month, calendar, locale)
//    }
//
//    func getWeekday(_ mode: Calendar.SymbolFormat = .standard,
//                    _ calendar: Calendar = Date.defaultCalendar,
//                    _ locale: LID = Date.defaultLocale) -> WeekDay? {
//        return WeekDay(index: weekday, calendar, locale)
//    }
//
//
//    func monthName(_ mode: Calendar.SymbolFormat = .standard,
//                   _ calendar: Calendar = Date.defaultCalendar,
//                   _ locale: LID = Date.defaultLocale) -> Str? {
//        return getMonth(mode, calendar, locale)?.s
//    }
//
//    func weekdayName(_ mode: Calendar.SymbolFormat = .standard,
//                     _ calendar: Calendar = Date.defaultCalendar,
//                     _ locale: LID = Date.defaultLocale) -> Str? {
//        return getWeekday(mode, calendar, locale)?.s
//    }
    
    ///-  important: it's largely unimplemented, and is not recommended for use.
    func quarterName(mode: Calendar.SymbolFormat = .standard,
                     calendar: Calendar = Date.defaultCalendar,
                     _ lid: LID = Date.defaultLID) -> Str? {
        
        var cal = calendar
        cal.lid = lid
        //TODO: consider making Quarter model, like Month, WeekDay
        
        let idx = quarter - 1
        switch mode {
        case .standard:
            return cal.quarterSymbols[idx]
            
        case .defaultStandalone:
            return cal.standaloneQuarterSymbols[idx]
            
        case .short, .veryShort:
            return cal.shortQuarterSymbols[idx]
            
        case .standaloneShort, .standaloneVeryShort:
            return cal.shortStandaloneQuarterSymbols[idx]
        }
    }
    
    /// returns nil if era is nil
    func eraName(_ mode: Calendar.SymbolFormat = .standard,
                 _ calendar: Calendar = Date.defaultCalendar,
                 _ lid: LID = Date.defaultLID) -> Str? {
        
        var cal = calendar
        cal.lid = lid
        
        let idx = era - 1
        switch mode {
        case .standard,
             .defaultStandalone:
            return cal.longEraSymbols[idx]
            
        case .short,
             .standaloneShort,
             .veryShort,
             .standaloneVeryShort:
            return cal.eraSymbols[idx]
        }
    }
    
    //MARK: -
    
    //TODO: improve
    /// returns ordinal number representation for current day, for ex. first, second
    /// if day is nil (in Date) - returns nil
    //    var ordinalDay: Str? {
    //        return DateFormatter.sharedOrdinalNumberFormatter( region.locale).string(from: day as NSNumber) ?? "\(day)"
    //    }
    
}
