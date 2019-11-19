

@_exported import TimeDurationKit


// limitation cannot mark start and end of day -> use DayMoment
/// Time of the day, between 0 and 23
public struct DayTime: Hashable {
    
    /// from 0 to 23
    var _hour: Int // or Double ??
    
    /// - Parameter hour: from 0 to 23
    public init(_ hour: Int) {
        crashIf(hour < 0 || hour > 23)
        self._hour = hour
    }
}

public extension DayTime {
    
    /// from 0 to 23
    var hour: Int {
        return _hour
    }
    
    //MARK: cotrs
    
    /// 0:0
    static var midnight: DayTime {
        return DayTime(0)
    }
    /// 12:0
    static var midday: DayTime {
        return DayTime(12)
    }
}
