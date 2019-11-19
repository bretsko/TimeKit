
import MinimalBase


public extension Calendar {
    
    /// used to format month, weekday, quarter symbols.
    /// Stand-alone properties are used in places like calendar headers.
    /// Non-stand-alone properties are used in context (for example, “Saturday, November 12th”).
    enum SymbolFormat {
        
        /// Default formatter
        /// (ie. `4th quarter` for quarter, `April` for months and `Wednesday` for weekdays)
        case standard
        
        /// stand-alone properties are for use in places like calendar headers
        /// See standard; See `short`
        case defaultStandalone
        
        /// Short symbols
        /// (ie. `Jun` for months, `Fri` for weekdays, `Q1` for quarters)
        case short
        
        /// Very short symbols
        /// (ie. `J` for months, `F` for weekdays, for quarter it just return `short` variant)
        case veryShort
        
        /// See `short`
        /// stand-alone properties are for use in places like calendar headers
        case standaloneShort
        
        /// See `veryShort`
        /// stand-alone properties are for use in places like calendar headers
        case standaloneVeryShort
    }
}
