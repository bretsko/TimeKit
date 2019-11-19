
@_exported import MinimalBase


public extension Date {
    
    //TODO:
    
    func isMonth(_ month: Month) -> Bool {
        return self.month == month.index
    }
    
    var monthSymbol: Month {
        return Month(month)
    }
}
