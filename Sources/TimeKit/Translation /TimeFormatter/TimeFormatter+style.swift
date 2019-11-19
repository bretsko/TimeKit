


//MARK: - Style

public extension TimeFormatter {
    
    struct Style {
        
        /// TimeTranslRuleSet styles supported by the mode, specified in order.
        /// The first available translStyle for specified locale is used.
        /// If no translStyle is available `.long` is used instead (this translStyle MUST be part of every lang TimeTranslRuleSet structure).
        public var translStyles: [TimeTranslStyle]
        
        /// RuleSet is used to define a set of rules used to get the best  representation of a given elapsed time interval (ie. the best  representation for 300 seconds is in minutes, 5 minutes specifically).
        /// Rules are executed in order by the parser and the best one (< elapsed interval)  is returned to be used by the formatter.
        /// By default convenient rule set is used.
        public var ruleSet: [Rule]
        
        /// Allowed time units the mode can use.
        /// Some modes may not include some time units (ie. `.quarter`) because they are not useful for a given representation.
        /// By default the following units are set:
        /// `.now, .minute, .hour, .day, .week, .month, .year`
        public var allowedUnits: [Time]?
    }
}
public extension TimeFormatter.Style {
    
    init(_ translStyles: [TimeTranslStyle] = [.long],
         ruleSet: [TimeFormatter.Rule] = TimeFormatter.convenientRuleSet,
         allowedUnits: [Time] = Self.defaultAllowedUnits) {
        
        self.translStyles = translStyles
        self.ruleSet = ruleSet
        self.allowedUnits = allowedUnits
    }
    
    static var defaultAllowedUnits: [Time] {
        [ Moment.now.time,
          AnyPeriod.minute.time,
          AnyPeriod.hour.time,
          AnyPeriod.day.time,
          AnyPeriod.week.time,
          AnyPeriod.month.time,
          AnyPeriod.year.time ]
    }
}

//MARK: - Rule

public extension TimeFormatter {
    
    /// Hashable ?
    struct Rule {
        
        /// The time unit to which the rule refers.
        /// It's used to evaluate the factor.
        var time: Time
        
        /// Threshold value of the unit. When a difference between two dates is less than the threshold the unit before this is the best candidate to represent the time interval.
        var threshold: Threshold?
        
        /// Granuality threshold of the unit
        var granularity: Double?
        
        /// The rounding strategy that should be used prior to generating the relative time
        var roundingMode: RoundingMode
        
        /// Relation with a previous threshold
        var thresholdPrevious: [Time: Double]?
        
        //??
        /// You can specify a custom formatter for a rule which return the string representation of a data with your own pattern.
        typealias CustomFormatter = ((Date) -> (Str))
        
        var customFormatter: CustomFormatter?
    }
}
extension TimeFormatter.Rule {
    
    /// - Parameters:
    ///   - prev: relation with a previous rule in ruleSet sist.
    init(_ time: Time,
         threshold: Threshold? = nil,
         granularity: Double? = nil,
         _ roundingMode: RoundingMode = .regular,
         prev: [Time: Double]? = nil,
         formatter: CustomFormatter? = nil) {
        
        self.time = time
        self.threshold = threshold
        self.granularity = granularity
        self.roundingMode = roundingMode
        self.thresholdPrevious = prev
        self.customFormatter = formatter
    }
    
    // conv init
    /// - Parameters:
    ///   - prev: relation with a previous rule in ruleSet sist.
    init(_ moment: Moment,
         threshold: Threshold? = nil,
         granularity: Double? = nil,
         _ roundingMode: RoundingMode = .regular,
         prev: [Time: Double]? = nil,
         formatter: CustomFormatter? = nil) {
        
        self.init(Time.moment(moment),
                  threshold:threshold,
                  granularity:granularity,
                  roundingMode,
                  prev:prev,
                  formatter:formatter)
    }
    
    // conv init
    /// - Parameters:
    ///   - prev: relation with a previous rule in ruleSet sist.
    init(_ period: AnyPeriod,
         threshold: Threshold?,
         granularity: Double? = nil,
         _ roundingMode: RoundingMode = .regular,
         prev: [Time: Double]? = nil,
         formatter: CustomFormatter? = nil) {
        
        self.init(Time.period(period),
                  threshold:threshold,
                  granularity:granularity,
                  roundingMode,
                  prev:prev,
                  formatter:formatter)
    }
    
    //MARK: Threshold
    
    enum Threshold {
        case value(Double)
        //??
        case function((TimeInterval) -> (Double))
        
        func evaluate(for elapsed: TimeInterval) -> Double {
            switch self {
            case .value(let value):
                return value
            case .function(let function):
                return function(elapsed)
            }
        }
    }
    
    /// Rule RoundingMode
    enum RoundingMode {
        
        case regular
        case ceiling
        case flooring
        case custom((Double) -> Double)
        
        func round(_ value: Double) -> Double {
            
            switch self {
            case .regular:
                return round(value)
            case .ceiling:
                return ceil(value)
            case .flooring:
                return floor(value)
            case .custom(let roundFunc):
                return roundFunc(value)
            }
        }
    }
}


//MARK: - rule sets

public extension TimeFormatter {
    
    static var canonicalRuleSet: [Rule] { // Set<Rule> ?
        [
            Rule(Moment.now,
                 threshold: .value(0)),
            
            Rule(AnyPeriod.second,
                 threshold: .value(0.5)),
            
            Rule(AnyPeriod.minute,
                 threshold: .value(59.5)),
            
            Rule(AnyPeriod.hour,
                 threshold: .value(59.5 * 60.0)),
            
            Rule(AnyPeriod.day,
                 threshold: .value(23.5 * 60 * 60)),
            
            Rule(AnyPeriod.week,
                 threshold: .value(6.5 * DurationUnit.days.factor)),
            
            Rule(AnyPeriod.month,
                 threshold: .value(3.5 * 7 * DurationUnit.days.factor)),
            
            Rule(AnyPeriod.year,
                 threshold: .value(1.5 * DurationUnit.months.factor))
        ]
    }
    
    static var convenientRuleSet: [Rule] { // Set<Rule> ?
        [
            Rule(Moment.now,
                 threshold: .value(0)),
            
            Rule(AnyPeriod.second,
                 threshold: .value(1),
                 prev: [Moment.now.time: 1]),
            
            Rule(AnyPeriod.minute,
                 threshold: .value(45)),
            
            Rule(AnyPeriod.minute,
                 threshold: .value(2.5 * 60),
                 granularity: 5),
            
            //            Rule(AnyPeriod.halfHour,
            //                 threshold: .value(22.5 * 60),
            //                 granularity: 5),
            
            Rule(AnyPeriod.hour,
                 threshold: .value(42.5 * 60),
                 prev: [AnyPeriod.minute.time: 52.5 * 60]),
            
            Rule(AnyPeriod.day,
                 threshold: .value((20.5 / 24) * DurationUnit.days.factor)),
            
            Rule(AnyPeriod.week,
                 threshold: .value(5.5 * DurationUnit.days.factor)),
            
            Rule(AnyPeriod.month,
                 threshold: .value(3.5 * 7 * DurationUnit.days.factor)),
            
            Rule(AnyPeriod.year,
                 threshold: .value(10.5 * DurationUnit.months.factor))
        ]
    }
    
    
    static var twitterRuleSet: [Rule] { // Set<Rule> ?
        [
            Rule(Moment.now,
                 threshold: .value(0)),
            
            Rule(AnyPeriod.second,
                 threshold: .value(1),
                 prev: [Moment.now.time: 1]),
            
            Rule(AnyPeriod.minute,
                 threshold: .value(45)),
            
            Rule(AnyPeriod.hour,
                 threshold: .value(59.5 * 60.0)),
            
            Rule(AnyPeriod.hour,
                 threshold: .value(1.days.timeInterval - 0.5 * 1.hours.timeInterval)),
            
            Rule(AnyPeriod.day,
                 threshold: .value(20.5 / 24 * DurationUnit.days.factor)),
            
            //??
            //            Rule(.other,
            //                 .function({ now in
            //
            //                    let date = (Date(secondsSince1970: now) + 1.years)!
            //                    // Jan 1st of the next year.
            //                    let nextYear = date.resetting(toStartOf: .year)
            //                    return nextYear.secondsSince1970 - now
            //                 }), formatter: { date in
            //                    // "Apr 11, 2017"
            //                    let f = DateFormatter.shared()
            //                    f.dateFormat = "MMM dd, yyyy"
            //                    return f.string(from: date)
            //            })
        ]
    }
}


/// time-only mode
//    static var timeStyle: Style {
//         Style([.long_time], .convenient)
//    }

//    static var twitterStyle: Style {
//         Style([.tiny, .short_time, .narrow, .short_time],
//                     .twitter)
//    }


/// Create a new ruleSet by removing the units from  which are not part of the supplied array.
///
/// - Parameter rules: rules to keep.
//    func filtered(by rules: [Time]) -> [Rule] {
//         [Rule](rules.filter {
//            rules.contains($0.rule)
//        })
//    }

//extension TimeFormatter.[Rule] {
//
/// Subscript by unit.
/// Return the first rule for given unit.
///
/// - Parameter unit: unit to get.
//    subscript(_ unit: Time) -> Rule? {
//        return rules.first(where: { $0.unit == unit })
//    }

/// Subscript by index.
/// Return the rule at given index, `nil` if index is invalid.
///
/// - Parameter index: index
//    subscript(_ index: Int) -> Rule? {
//        guard index < rules.count, index >= 0 else {
//            return nil
//        }
//        return rules[index]
//    }
//}

