
import Foundation

public typealias DateFormattingOptions = DateComponentsFormatter.FormattingOptions

public extension DateComponentsFormatter {
    
    static func shared(_ formattingOptions: FormattingOptions,
                       _ calendar: Calendar = Date.defaultCalendar) -> DateComponentsFormatter {
        let formatter = shared()
        formatter.formattingOptions = formattingOptions
        formatter.calendar = calendar
        return formatter
    }
}

//MARK: FormattingOptions

public extension DateComponentsFormatter {
    
    var formattingOptions: FormattingOptions {
        
        get {
            return FormattingOptions(allowsFractionalUnits: allowsFractionalUnits, allowedUnits: allowedUnits, collapsesLargestUnit: collapsesLargestUnit, maxUnitCount: maximumUnitCount, zeroFormattingBehavior: zeroFormattingBehavior, unitsStyle: unitsStyle)
        }
        set {
            if let a = newValue.allowsFractionalUnits {
                allowsFractionalUnits = a
            }
            if let a = newValue.allowedUnits {
                allowedUnits = a
            }
            if let a = newValue.collapsesLargestUnit {
                collapsesLargestUnit = a
            }
            if let a = newValue.maxUnitCount {
                maximumUnitCount = a
            }
            if let a = newValue.zeroFormattingBehavior {
                zeroFormattingBehavior = a
            }
            if let a = newValue.unitsStyle {
                unitsStyle = a
            }
        }
    }
    
    struct FormattingOptions {
        
        /// Fractional units may be used when a value cannot be exactly represented using the available units.
        /// For example, if minutes are not allowed, the value “1h 30m” could be formatted as “1.5h”.
        public var allowsFractionalUnits: Bool?
        
        /// Specify the units that can be used in the output.
        public var allowedUnits: NSCalendar.Unit?
        
        /// A Boolean value indicating whether to collapse the largest unit into smaller units when a certain threshold is met.
        public var collapsesLargestUnit: Bool?
        
        /// The max number of time units to include in the output string.
        /// If 0 does not cause the elimination of any units.
        public var maxUnitCount: Int?
        
        /// The formatting mode for units whose value is 0.
        public var zeroFormattingBehavior: ZeroFormattingBehavior?
        
        /// The preferred mode for units.
        public var unitsStyle: UnitsStyle?
        
        public init(allowsFractionalUnits: Bool? = nil,
                    allowedUnits: NSCalendar.Unit? = nil,
                    collapsesLargestUnit: Bool? = nil,
                    maxUnitCount: Int? = nil,
                    zeroFormattingBehavior: ZeroFormattingBehavior? = nil,
                    unitsStyle: UnitsStyle? = nil) {
            
            self.allowsFractionalUnits = allowsFractionalUnits
            self.allowedUnits = allowedUnits
            self.collapsesLargestUnit = collapsesLargestUnit
            self.maxUnitCount = maxUnitCount
            self.zeroFormattingBehavior = zeroFormattingBehavior
            self.unitsStyle = unitsStyle
        }
    }
}
