

@_exported import DateKit

public extension Date {

    //MAKR: format
    
    func format(_ mode: DateFormat = .standard,
                _ calendar: Calendar = Date.defaultCalendar) -> Str? {
        DateFormatter.shared(calendar:calendar).format(self, with: mode)
    }
    
    func format(customFormat: Str,
                _ calendar: Calendar = Date.defaultCalendar) -> Str? {
        DateFormatter.shared(calendar:calendar).format(self, with: .custom(customFormat))
    }
    
    // MARK: -
    
    /**
     *  Get string representation of date.
     *
     *  - parameter dateStyle: The date style in which to represent the date
     *  - returns: Represenation of the date (self) in the specified format
     */
    func format(style: DateFormatter.Style,
                _ calendar: Calendar = Date.defaultCalendar) -> Str {
        let df = DateFormatter.shared(calendar:calendar)
        df.dateStyle = style
        return df.string(from: self)
    }
    
    /**
     *  Get string representation of date.
     *
     *  - parameter dateFormat: The date format string, according to Apple's date formatting guide in which to represent the date
     *  - returns: Represenation of the date (self) in the specified format
     */
    func format(dateFormat: Str,
                _ calendar: Calendar = Date.defaultCalendar) -> Str {
        
        let f = DateFormatter.shared(calendar:calendar)
        f.dateFormat = dateFormat
        return f.string(from: self)
    }
    
    func format(dateStyle: DateFormatter.Style,
                timeStyle: DateFormatter.Style,
                _ calendar: Calendar = Date.defaultCalendar) -> Str {
        let df = DateFormatter.shared(calendar:calendar)
        df.dateStyle = dateStyle
        df.timeStyle = timeStyle
        return df.string(from: self)
    }
    
    // MARK: -
    
    func isoString(_ options: ISO8601DateFormatter.Options = ISO8601DateFormatter.Options([.withInternetDateTime])) -> Str? {
        
        ISO8601DateFormatter.shared(options: options).string(from: self)
    }
    
    func formatWithISOFormat(_ options: ISO8601DateFormatter.Options? = nil) -> Str? {
         format(.iso(options))
    }
    
    
    func dotNETString(_ calendar: Calendar = Date.defaultCalendar) -> Str? {
        DateFormatter.shared(calendar:calendar).format(self, with: .dotNet)
    }
    
    func rssString(altRSSType: Bool = false,
                   _ calendar: Calendar = Date.defaultCalendar) -> Str? {
        DateFormatter.shared(calendar:calendar).format(self, with: (altRSSType ? .altRSS : .rss))
    }
    
    func sqlString(_ calendar: Calendar = Date.defaultCalendar) -> Str? {
        DateFormatter.shared(calendar:calendar).format(self, with: .sql)
    }
    
    
    //    func relString(since: Date? = nil,
    //                   style: TimeFormatter.Style = TimeFormatter.Style(),
    //                   _ locale: LID? = nil) -> Str? {
    //
    ////        return TimeFormatter.shared.format(self,
    ////                                          to: since,
    ////                                          style: style,
    ////                                          locale)
    //    }
}



//???
//public extension Date {
//    #if os(Linux)
//    var customFormatter: DateFormatter? {
//        get {
//            debugPrint("Not supported on Linux")
//            return nil
//        }
//        set { debugPrint("Not supported on Linux") }
//    }
//    #else
//    /// Assign a custom formatter if you need a special behaviour during formatting of the object.
//    /// Usually you will not need to do it, DateRegion uses the local thread date formatter in order to
//    /// optimize the formatting process. By default is `nil`.
//    var customFormatter: DateFormatter? {
//        get {
//            return getAssociatedValue(key: AssociatedKeys.customDateFormatter.rawValue, object: self as AnyObject)
//        }
//        set {
//            set(associatedValue: newValue, key: AssociatedKeys.customDateFormatter.rawValue, object: self as AnyObject)
//        }
//    }
//    #endif
//}
//
//
//#if os(Linux)
//
//#else
//enum AssociatedKeys: Str {
//    case customDateFormatter = "DateRegion.CustomDateFormatter"
//}
//#endif

//
//#if os(Linux)
//
//#else
////import ObjectiveC.runtime
//
//func getAssociatedValue<T>(key: Str, object: AnyObject) -> T? {
//    return (objc_getAssociatedObject(object, key.address) as? AssociatedValue)?.value as? T
//}
//
//func getAssociatedValue<T>(key: Str, object: AnyObject, initialValue: @autoclosure () -> T) -> T {
//    return getAssociatedValue(key: key, object: object) ?? setAndReturn(initialValue: initialValue(), key: key, object: object)
//}
//
//func getAssociatedValue<T>(key: Str, object: AnyObject, initialValue: () -> T) -> T {
//    return getAssociatedValue(key: key, object: object) ?? setAndReturn(initialValue: initialValue(), key: key, object: object)
//}
//
//private func setAndReturn<T>(initialValue: T, key: Str, object: AnyObject) -> T {
//    set(associatedValue: initialValue, key: key, object: object)
//    return initialValue
//}
//
//func set<T>(associatedValue: T?, key: Str, object: AnyObject) {
//    set(associatedValue: AssociatedValue(associatedValue), key: key, object: object)
//}
//
//func set<T: AnyObject>(weakAssociatedValue: T?, key: Str, object: AnyObject) {
//    set(associatedValue: AssociatedValue(weak: weakAssociatedValue), key: key, object: object)
//}
//
//extension Str {
//
//    fileprivate var address: UnsafeRawPointer {
//        return UnsafeRawPointer(bitPattern: abs(hashValue))!
//    }
//
//}
//
//private func set(associatedValue: AssociatedValue, key: Str, object: AnyObject) {
//    objc_setAssociatedObject(object, key.address, associatedValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
//}
//
//private class AssociatedValue {
//
//    weak var _weakValue: AnyObject?
//    var _value: Any?
//
//    var value: Any? {
//        return _weakValue ?? _value
//    }
//
//    init(_ value: Any?) {
//        _value = value
//    }
//
//    init(weak: AnyObject?) {
//        _weakValue = weak
//    }
//
//}
//#endif
