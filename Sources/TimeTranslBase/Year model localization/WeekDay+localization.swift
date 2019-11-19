


public extension WeekDay {
    
    //TODO: consider renaming funcs to str
    
    
    /// Returns the name of the day given a specific locale.
    /// For example, for the `Friday` enum value, the en_AU locale would return "Friday" and fr_FR would return "samedi"
    ///
    /// - Parameter locale: locale of the output, omit to use the default locale.
    func string(with format: Calendar.SymbolFormat = .standard,
                calendar: Calendar = Date.defaultCalendar,
                _ lid: LIDP = Date.defaultLID) -> Str {
        
        var cal = calendar
        cal.lid = LID(lid)
        switch format {
        case .standard:
            return cal.weekdaySymbols[int]
            
        case .defaultStandalone:
            return cal.standaloneWeekdaySymbols[int]
            
        case .short:
            return cal.shortWeekdaySymbols[int]
            
        case .standaloneShort:
            return cal.shortStandaloneWeekdaySymbols[int]
            
        case .veryShort:
            return cal.veryShortWeekdaySymbols[int]
            
        case .standaloneVeryShort:
            return cal.veryShortStandaloneWeekdaySymbols[int]
        }
    }
}
