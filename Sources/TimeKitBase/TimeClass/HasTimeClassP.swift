




public protocol HasTimeClassP {
    
    var timeClass: TimeClass {get}
}
public extension HasTimeClassP {
    
    /// < Date() or any abstract past
    var isPast: Bool {
        timeClass.isPast
    }
    /// > Date() or any abstract future
    var isFuture: Bool {
        timeClass.isFuture
    }
    
    /// right now, currently, in current week, month, etc
    var isPresent: Bool {
        timeClass.isPresent
    }
    /// anything which cannot be classified as present, past or future
    var isUndefinedTimeClass: Bool {
        timeClass.isUndefinedTimeClass
    }
}

