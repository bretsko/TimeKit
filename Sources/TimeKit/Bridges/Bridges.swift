



public extension AnyPeriod {
    
    func contains(_ moment: Moment) -> Bool {
        fatalError()
    }
    
    func belongs(to interval: Recurrence) -> Bool {
        fatalError()
    }
}

public extension Recurrence {
    
    func contains(_ moment: Moment) -> Bool {
        fatalError()
    }
    
    func belongs(to period: AnyPeriod) -> Bool {
        fatalError()
    }
}


public extension Moment {
    
    func belongs(to interval: Recurrence) -> Bool {
        fatalError()
    }
    
    func belongs(to period: AnyPeriod) -> Bool {
        fatalError()
    }
}



