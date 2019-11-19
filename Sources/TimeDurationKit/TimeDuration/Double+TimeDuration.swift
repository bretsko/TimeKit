
@_exported import DateKit
@_exported import MinimalBase

//Double
public extension TimeInterval {
    var timeDuration: TimeDuration {
        return TimeDuration.seconds(self)
    }
}

public extension Int {
    var timeDuration: TimeDuration {
        return TimeDuration.seconds(Double(self))
    }
}

public extension DateInterval {
    var timeDuration: TimeDuration {
        return TimeDuration.seconds(duration)
    }
}

public extension HasTimeIntervalP {
    var timeDuration: TimeDuration {
        return TimeDuration.seconds(timeInterval)
    }
}
