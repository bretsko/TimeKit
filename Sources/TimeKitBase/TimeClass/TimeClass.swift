



public enum TimeClass: Str, StrEnumT {
    
    /// < Date() or any abstract past
    case past
    
    /// > Date() or any abstract future
    case future
    
    /// right now, currently, in current week, month, etc
    case present
    
    /// anything which cannot be classified as present, past or future
    case undefined
}

public extension TimeClass {
    
    /// < Date() or any abstract past
    var isPast: Bool {
        self == .past
    }
    
    /// > Date() or any abstract future
    var isFuture: Bool {
        self == .future
    }
    
    /// right now, currently, in current week, month, etc
    var isPresent: Bool {
        self == .present
    }
    /// anything which cannot be classified as present, past or future
    var isUndefinedTimeClass: Bool {
        self == .undefined
    }
}

// can get all cases - to express time in all diff ways (except exact cases)
