
@_exported import DateKit


public extension Date {
    
    //MARK: comp names
    
    //TODO: 
//    func getMonth(_ mode: Calendar.SymbolFormat = .standard,
//                  _ calendar: Calendar = Date.defaultCalendar,
//                  _ locale: Locale = Date.defaultLocale) -> Month? {
//        return Month(index: month, calendar, locale)
//    }
//
//    func getWeekday(_ mode: Calendar.SymbolFormat = .standard,
//                    _ calendar: Calendar = Date.defaultCalendar,
//                    _ locale: Locale = Date.defaultLocale) -> WeekDay? {
//        return WeekDay(index: weekday, calendar, locale)
//    }
//
//
//    func monthName(_ mode: Calendar.SymbolFormat = .standard,
//                   _ calendar: Calendar = Date.defaultCalendar,
//                   _ locale: Locale = Date.defaultLocale) -> String? {
//        return getMonth(mode, calendar, locale)?.s
//    }
//
//    func weekdayName(_ mode: Calendar.SymbolFormat = .standard,
//                     _ calendar: Calendar = Date.defaultCalendar,
//                     _ locale: Locale = Date.defaultLocale) -> String? {
//        return getWeekday(mode, calendar, locale)?.s
//    }
    
    ///-  important: it's largely unimplemented, and is not recommended for use.
    func quarterName(_ mode: Calendar.SymbolFormat = .standard,
                     _ calendar: Calendar = Date.defaultCalendar,
                     _ locale: Locale = Date.defaultLocale) -> String? {
        
        var cal = calendar
        cal.locale = locale
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
                 _ locale: Locale = Date.defaultLocale) -> String? {
        
        var cal = calendar
        cal.locale = locale
        
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
    //    var ordinalDay: String? {
    //        return DateFormatter.sharedOrdinalNumberFormatter( region.locale).string(from: day as NSNumber) ?? "\(day)"
    //    }
    
}
