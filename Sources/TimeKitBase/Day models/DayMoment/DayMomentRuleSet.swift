

// https://github.com/FormatterKit/DayMomentFormatter
public struct DayMomentRuleSet: Hashable {
    
    /// https://unicode.org/reports/tr35/tr35-dates.html#Fixed_periods
    public var momentAtHour: [Int: DayMoment] = [:]
}

public extension DayMomentRuleSet {
    
    func moment(for hour: Int) -> DayMoment? {
        return momentAtHour[hour]
    }
}

public extension DayMomentRuleSet {
    
    init(_ elements: [DayMoment: DayMomentRule]) {
        
        elements.forEach { (period, rule) in
            switch rule {
            case .at(let hour):
                momentAtHour[hour] = period
            }
        }
    }
}


public enum DayMomentRule: Hashable {
    
    case at(hour: Int)
    //case range(fromHour: Int)
}
