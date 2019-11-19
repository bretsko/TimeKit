

@_exported import MinimalBase
@_exported import TimeKitBase


/// Translation of time unit, each unit can have several translation variants
public struct RecurrenceTranslation: Equatable {
    
    public var recurrence: Recurrence
    
    /// translation variants for current unit
    public var variants: [String]
    
    public init(_ recurrence: Recurrence,
                _ variants: [String]) {
        self.recurrence = recurrence
        self.variants = variants
    }
}

public extension RecurrenceTranslation {
    
    init(_ recurrence: Recurrence,
         _ variant: String) {
        self.init(recurrence, [variant])
    }
}

