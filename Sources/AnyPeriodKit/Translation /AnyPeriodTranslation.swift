

@_exported import MinimalBase
@_exported import TimeKitBase


/// Translation of time unit, each unit can have several translation variants
public struct AnyPeriodTranslation: Equatable {
    
    public var anyPeriod: AnyPeriod
    
    /// translation variants for current unit
    public var variants: [String]
    
    public init(_ anyPeriod: AnyPeriod,
                _ variants: [String]) {
        self.anyPeriod = anyPeriod
        self.variants = variants
    }
}

public extension AnyPeriodTranslation {
    
    init(_ anyPeriod: AnyPeriod,
         _ variant: String) {
        self.init(anyPeriod, [variant])
    }
}

