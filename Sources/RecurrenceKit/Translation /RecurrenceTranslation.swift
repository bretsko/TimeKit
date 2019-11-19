


@_exported import TimeKitBase


/// Translation of time unit, each unit can have several translation variants
public struct RecurrenceTranslation: Equatable {
    
    public var recurrence: Recurrence
    
    /// translation variants for current unit
    public var variants: [Str]
}
public extension RecurrenceTranslation {
    
    init(_ recurrence: Recurrence,
         _ variants: [Str]) {
        self.recurrence = recurrence
        self.variants = variants
    }
    
    init(_ recurrence: Recurrence,
         _ variant: Str) {
        self.init(recurrence, [variant])
    }
}

