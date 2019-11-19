
@_exported import TimeKitBase

public extension Month {
    
    //TODO: consider renaming funcs to str
    
    /// Returns the name of the month given a specific locale.
    /// For example, for the `January` enum value, the en_AU locale would return "January" and fr_FR would return "janvier"
    ///
    /// - Parameter locale: locale of the output, omit to use the default locale.
    func string(with format: Calendar.SymbolFormat = .standard,
                calendar: Calendar = Date.defaultCalendar,
                _ lid: LIDP = Date.defaultLID) -> Str {
        
        var cal = calendar
        cal.lid = LID(lid)
        switch format {
        case .standard:
            return cal.monthSymbols[int]
        case .defaultStandalone:
            return cal.standaloneMonthSymbols[int]
        case .short:
            return cal.shortMonthSymbols[int]
        case .standaloneShort:
            return cal.shortStandaloneMonthSymbols[int]
        case .veryShort:
            return cal.veryShortMonthSymbols[int]
        case .standaloneVeryShort:
            return cal.veryShortStandaloneMonthSymbols[int]
        }
    }
}
