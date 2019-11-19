


@_exported import TimeKitBase


/// Translation of time unit, each unit can have several translation variants
public struct AnyPeriodTranslation: Equatable {
    
    public var anyPeriod: AnyPeriod
    
    /// translation variants for current unit
    public var variants: [Str]
    
    public init(_ anyPeriod: AnyPeriod,
                _ variants: [Str]) {
        self.anyPeriod = anyPeriod
        self.variants = variants
    }
}

public extension AnyPeriodTranslation {
    
    init(_ anyPeriod: AnyPeriod,
         _ variant: Str) {
        self.init(anyPeriod, [variant])
    }
}

