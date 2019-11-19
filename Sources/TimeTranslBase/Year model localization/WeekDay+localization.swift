
@_exported import MinimalBase

public extension WeekDay {

    //MARK: -
    
    /// Returns the name of the day given a specific locale.
    /// For example, for the `Friday` enum value, the en_AU locale would return "Friday" and fr_FR would return "samedi"
    ///
    /// - Parameter locale: locale of the output, omit to use the default locale.
    func localizedString(with format: Calendar.SymbolFormat = .standard,
                         _ calendar: Calendar = Date.defaultCalendar,
                         _ locale: Locale = Date.defaultLocale) -> String {
        
        var cal = calendar
        cal.locale = locale
        switch format {
        case .standard:
            return cal.weekdaySymbols[index]
            
        case .defaultStandalone:
            return cal.standaloneWeekdaySymbols[index]
            
        case .short:
            return cal.shortWeekdaySymbols[index]
            
        case .standaloneShort:
            return cal.shortStandaloneWeekdaySymbols[index]
            
        case .veryShort:
            return cal.veryShortWeekdaySymbols[index]
            
        case .standaloneVeryShort:
            return cal.veryShortStandaloneWeekdaySymbols[index]
        }
    }
}
