



public extension Recurrence {
    
    //MARK: static cotrs
    
    /// repeats given interval
    /// if end is not nil - limits the period with it
    static func byRepeating(seconds: TimeInterval,
                            startBoundary: Date? = nil,
                            endBoundary: Date? = nil) -> Recurrence {
        fatalError()
    }
    
    /// repeats given period
    /// if end is not nil - limits the period with it
    static func byRepeating(_ timePeriod: TimeDuration,
                            startBoundary: Date? = nil,
                            limitedBy endBoundary: Date?) -> Recurrence {
        fatalError()
    }
    
    //MARK: - byRepeating dateInterval  -
    
    /// repeats given interval with its duration
    /// if end is not nil - limits the period with it
    static func byRepeating(_ dateInterval: DateInterval,
                            limitedBy endBoundary: Date? = nil) -> Recurrence {
        fatalError()
    }
    
    // conv
    /// repeats given interval with its duration
    /// if end is not nil - limits the period with it
    static func byRepeatingDateInterval(start: Date,
                                        end: Date,
                                        limitedBy endBoundary: Date? = nil) -> Recurrence {
        
        //let interval = DateInterval(start:start, end:end)
        fatalError()
    }
    
    // conv
    /// repeats given interval with its duration
    /// if end is not nil - limits the period with it
    /// - precondition: `duration >= 0`
    static func byRepeatingDateInterval(start: Date,
                                        duration: TimeInterval,
                                        limitedBy endBoundary: Date? = nil) -> Recurrence {
        
        //let interval = DateInterval(start:start, duration:duration)
        fatalError()
    }
    
    //MARK: - withEvery -
    
    /// for ex, every month
    /// if start or end are not nil - limits the period with them
    static func withEvery(_ unit: DurationUnit,
                          start: Date? = nil,
                          end: Date? = nil) -> Recurrence {
        fatalError()
    }
    //TODO: convs for each case in DurationUnit
     
    //    func applying(_ mod: RecurrenceModifier) -> Recurrence {
    //
    //        fatalError()
    //    }
}
