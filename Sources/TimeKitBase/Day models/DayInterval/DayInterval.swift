

@_exported import TimeDurationKit


/// Part of the day, given by start and end hours
public struct DayInterval: Hashable {
    
    /// from 0 to 23
    var _startHour: Int // or Double ??
    
    /// from 0 to 23. Special case when both are equal 0, meaning full day
    var _endHour: Int // or Double ??
    
    /// - Parameter startHour: must be from 0 to 23, less than endHour
    /// - Parameter endHour: must be from 0 to 23, bigger than startHour. Special case when both are equal 0, meaning full day
    public init(startHour: Int, endHour: Int) {
        crashIf(startHour < 0 || startHour > 23 || endHour < 0 || endHour > 23)
        crashIf(startHour == endHour && endHour != 0)
        
        self._startHour = startHour
        self._endHour = endHour
    }
}
public extension DayInterval {
    
    /// from 0 to 23
    var startHour: Int {
        return _startHour
    }
    
    /// from 0 to 23. Special case when both startHour and endHour are equal 0, meaning full day
    var endHour: Int {
        return _endHour
    }
    
    /// 0:0
    var isFullDay: Bool {
        return self == Self.fullDay
    }
    /// 0 to 12
    var isAM: Bool {
        return self == Self.am
    }
    /// 12 to 0
    var isPM: Bool {
        return self == Self.pm
    }
    
    //MARK: cotrs
    
    /// 0:0
    static var fullDay: DayInterval {
        return DayInterval(startHour: 0, endHour: 0)
    }
    /// 0 to 12
    static var am: DayInterval {
        return DayInterval(startHour: 0, endHour: 12)
    }
    /// 12 to 0
    static var pm: DayInterval {
        return DayInterval(startHour: 12, endHour: 0)
    }
}


