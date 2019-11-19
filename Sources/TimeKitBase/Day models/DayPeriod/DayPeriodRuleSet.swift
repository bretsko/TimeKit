

// https://github.com/FormatterKit/DayPeriodFormatter
public struct DayPeriodRuleSet { //Hashable
    
    /// https://unicode.org/reports/tr35/tr35-dates.html#Variable_periods
    public var sortedPeriods: [(period: DayPeriod, startHour: Int)] = []
}

public extension DayPeriodRuleSet {
    
    func period(for hour: Int) -> DayPeriod {
        
        // Find latest period starting not later than 'hour'
        let latestVariablePeriod = sortedPeriods.last {
            $0.startHour <= hour
        }
        if let period = latestVariablePeriod {
            return period.period
        }
        
        // When all periods start after the hour use
        // period overlapping the day boundary – which is the last period
        let dayBoundaryOverlappingPeriod = sortedPeriods.last!
        return dayBoundaryOverlappingPeriod.period
    }
}

public extension DayPeriodRuleSet {
    
    init(_ elements: [DayPeriod: DayPeriodRule]) {
        
        elements.forEach { (period, rule) in
            switch rule {
            case .range(let from):
                sortedPeriods.append((period, from))
            }
        }
    }
}

public enum DayPeriodRule: Hashable {
    
    //case at(hour: Int)
    case range(fromHour: Int)
}
