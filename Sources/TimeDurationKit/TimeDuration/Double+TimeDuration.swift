
@_exported import DateKit


//Double
public extension TimeInterval {
    var timeDuration: TimeDuration {
        TimeDuration.seconds(self)
    }
}

public extension Int {
    var timeDuration: TimeDuration {
        TimeDuration.seconds(Double(self))
    }
}

public extension DateInterval {
    var timeDuration: TimeDuration {
        TimeDuration.seconds(duration)
    }
}

public extension HasTimeIntervalP {
    var timeDuration: TimeDuration {
        TimeDuration.seconds(timeInterval)
    }
}
