
@_exported import TimeKitBase

// Month?

public extension Month {
    
    //MARK: funcs
    
    /// Returns the name of the month given a specific locale.
    /// For example, for the `January` enum value, the en_AU locale would return "January" and fr_FR would return "janvier"
    ///
    /// - Parameter locale: locale of the output, omit to use the default locale.
    func localizedString(with mode: Calendar.SymbolFormat = .standard,
                         _ calendar: Calendar = Date.defaultCalendar,
                         _ locale: Locale = Date.defaultLocale) -> String {
        
        var cal = calendar
        cal.locale = locale
        switch mode {
        case .standard:
            return cal.monthSymbols[index]
        case .defaultStandalone:
            return cal.standaloneMonthSymbols[index]
        case .short:
            return cal.shortMonthSymbols[index]
        case .standaloneShort:
            return cal.shortStandaloneMonthSymbols[index]
        case .veryShort:
            return cal.veryShortMonthSymbols[index]
        case .standaloneVeryShort:
            return cal.veryShortStandaloneMonthSymbols[index]
        }
    }
}
