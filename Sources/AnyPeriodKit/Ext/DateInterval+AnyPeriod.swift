

public extension DateInterval {
    
    //TODO: also add funcs to check if the date belongs to
    // - period
    // - is moment
    // - inside the recurring interval
    
    // also need more convs
    
    func belongs(to period: AnyPeriod) -> Bool {
        fatalError()
    }
    
    func contains(_ period: AnyPeriod) -> Bool {
        fatalError()
    }
    
    //TODO:
    // or dates
    //    func date(at recurringInterval: Recurrence) -> Date? {
    //        fatalError()
    //    }
}
