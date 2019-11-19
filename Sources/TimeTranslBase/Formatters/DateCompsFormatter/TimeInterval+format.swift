
import Foundation


public extension TimeInterval {
    
     typealias DCFormatter = DateComponentsFormatter
     typealias FormattingOptions = DCFormatter.FormattingOptions
     typealias ZeroFormattingBehavior = DCFormatter.ZeroFormattingBehavior
     typealias UnitsStyle = DCFormatter.UnitsStyle
    
     
    /// Format a time interval in a string with desidered comps with passed mode.
    func formatAsInterval(_ options: FormattingOptions,
                          _ calendar: Calendar = Date.defaultCalendar) -> String {
        
        let formatter = DCFormatter.shared(options, calendar)
        let formattedValue = formatter.string(from: self)!
        
        guard options.zeroFormattingBehavior?.contains(.pad) == true else {
            return formattedValue
        }
        
        //FIXME: for some strange reason padding is not added at the very beginning positional item.
        // we'll add it manually if necessary
        guard let i = formattedValue.firstIndex(of: ":"), i.utf16Offset(in: formattedValue) < 2 else {
            return formattedValue
        }
        
        return "0\(formattedValue)"
    }
    
    /// Format a time interval in a string with desidered comps with passed mode.
    func format(_ options: FormattingOptions) -> String? {
        let f = DCFormatter.shared(options)
        return f.string(from: self)
    }
    
    /// Return a string representation of the time interval in form of clock countdown (ie. 57:00:00)
    func formatAsClock(_ zeroBehaviour: ZeroFormattingBehavior =  [.pad, .dropLeading]) -> String {
        let options = FormattingOptions(collapsesLargestUnit: true, maxUnitCount: 0, zeroFormattingBehavior: zeroBehaviour, unitsStyle: .positional)
        return formatAsInterval(options)
    }
    
    
    /// - Parameter allowsFractionalUnits: Fractional units may be used when a value cannot be exactly represented using the available units. For example, if minutes are not allowed, the value “1h 30m” could be formatted as “1.5h”.?
    /// - Parameter allowedUnits: Specify the units that can be used in the output.
    /// - Parameter collapsesLargestUnit: A Boolean value indicating whether to collapse the largest unit into smaller units when a certain threshold is met
    /// - Parameter maxUnitCount: The max number of time units to include in the output string. If 0 does not cause the elimination of any units.
    /// - Parameter zeroFormattingBehavior: The formatting mode for units whose value is 0
    /// - Parameter unitsStyle: The preferred mode for units.
    /// - Parameter locale: if locale is supplied it overrides the one in calendar
    func format(allowsFractionalUnits: Bool? = nil,
                allowedUnits: NSCalendar.Unit? = nil,
                collapsesLargestUnit: Bool = true,
                maxUnitCount: Int = 0,
                zeroFormattingBehavior: ZeroFormattingBehavior =  [.pad, .dropLeading],
                unitsStyle: UnitsStyle? = nil,
                _ calendar: Calendar = Date.defaultCalendar) -> String {
        
        let options = FormattingOptions(allowsFractionalUnits: allowsFractionalUnits, allowedUnits: allowedUnits, collapsesLargestUnit: collapsesLargestUnit, maxUnitCount: maxUnitCount, zeroFormattingBehavior:zeroFormattingBehavior, unitsStyle:unitsStyle)
        return formatAsInterval(options, calendar)
    }
}





