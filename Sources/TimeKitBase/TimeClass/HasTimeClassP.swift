

import MinimalBase



public protocol HasTimeClassP {
    
    var timeClass: TimeClass {get}
}
public extension HasTimeClassP {
    
    var isPast: Bool {
        return timeClass.isPast
    }
    var isFuture: Bool {
        return timeClass.isFuture
    }
    var isPresent: Bool {
        return timeClass.isPresent
    }
    /// anything which cannot be classified as present, past or future
    var isUndefinedTimeClass: Bool {
        return timeClass.isUndefinedTimeClass
    }
}


extension Date: HasTimeClassP {
    
    public var timeClass: TimeClass {
        fatalError()
    }
}
extension DateInterval: HasTimeClassP {
    
    public var timeClass: TimeClass {
        fatalError()
    }
}

