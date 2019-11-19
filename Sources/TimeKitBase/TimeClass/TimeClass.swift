

import MinimalBase


public enum TimeClass: String, StrEnumT {
    
    case past
    
    case future
    
    case present
    
    /// anything which cannot be classified as present, past or future
    case undefined
}
public extension TimeClass {
    
    var isPast: Bool {
        return self == .past
    }
    var isFuture: Bool {
        return self == .future
    }
    var isPresent: Bool {
        return self == .present
    }
    /// anything which cannot be classified as present, past or future
    var isUndefinedTimeClass: Bool {
        return self == .undefined
    }
}

// can get all cases - to express time in all diff ways (except exact cases)
