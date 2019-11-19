

@_exported import MinimalBase

public typealias TimeTranslRuleSet = [ TimeTranslStyle: [TimeTranslation] ]

//TODO:  consider using RelativeDateTimeFormatter instead, or subclass if this one improves
public class TimeFormatter {
    
    // this dictionary stores cached transations dictionaries from LocaleID
    fileprivate var cachedTranslations = [ LocaleID : TimeTranslRuleSet ]()
    
    // cannot use simple singleton because caching allows modifying the existing cachedTranslations from multiple threads
    static var shared: TimeFormatter {
        return threadSingleton { TimeFormatter() }
    }
}

public extension TimeFormatter {
    
    //TODO: improve interface - toDate??
    /// Return relative formatted string result of comparison of two passed dates.
    ///
    /// - Parameters:
    ///   - toDate: date to compare against for (if `nil` current date in the same region of `date` is used)
    ///   - style: style of the relative formatter.
    ///   - locale: locale to use; if not passed the `date`'s region locale is used.
    /// - Returns: formatted string, nil if formatting fails
    func format(_ date: Date,
                to toDate: Date? = nil,
                style: Style = Style(),
                _ locale: Locale = Date.defaultLocale) -> String? {
        
        fatalError()
        //FIXME: need getters
        //??
//        let date = toDate ?? date
//        // date's locale is used if no value is forced
//
//        // how much time elapsed (in seconds)
//        let elapsed = date.secondsSince1970 - date.secondsSince1970
//
//        // get first suitable translStyle for a given locale
//        let (translStyle, translUnit) = suitableTranslation(in: style.translStyles, for: locale)
//
//        // get all units which can be represented by the locale data for required style
//        guard let allUnits = suitableUnits(in: translUnit,
//                                           requiredUnits: style.allowedUnits) else {
//                                            return nil
//        }
//
//        let rule = ruleToRepresent(abs(elapsed),
//                                   referenceInterval: date.secondsSince1970,
//                                   units: allUnits,
//                                   style.ruleSet)
//        guard let suitableRule = rule,
//            let suitableTime = suitableRule.time._time else {
//                // If no time unit is suitable, just output an empty string.
//                // E.g. when "now" unit is not available
//                // and "second" has a threshold of `0.5`
//                // (e.g. the "canonical" grading scale).
//                return nil
//        }
//
//        if let customFormat = suitableRule.customFormatter {
//            return customFormat(date)
//        }
//
//        var amount = abs(elapsed) / suitableRule.time.factor
//
//        // Apply granularity to the time amount
//        // (and fallback to the previous step
//        //  if the first level of granularity
//        //  isn't met by this amount)
//        if let granularity = suitableRule.granularity {
//            // Recalculate the elapsed time amount based on granularity
//            amount = round(amount / granularity) * granularity
//        }
//
//        let sign = elapsed < 0 ? -1.0 : 1.0
//        let value = -1.0 * sign * suitableRule.roundingMode.round(amount)
//        guard let r = relativeFormat(value: value,
//                                     suitableTime,
//                                     translStyle,
//                                     locale) else {
//                                        return nil
//        }
//        return r.replacingOccurrences(of: "{0}", with: String(Int(abs(value))))
    }
    
    /// Return all languages supported by the library for relative date formatting
    static var allLanguages: [LocaleID] {
        return LocaleID.allCases
    }
}

fileprivate extension TimeFormatter {
    
    //TODO: docs
    func relativeFormat(value: Double,
                        _ time: Time,
                        _ translStyle: TimeTranslStyle,
                        _ locale: Locale = .autoupdatingCurrent) -> String? {
        
        fatalError()
         //FIXME: need getters
//        let translSet = getCachedTranslation(for: locale.langID)
//
//        guard let ruleSet = translSet[translStyle] else {
//            return nil
//        }
//        guard let unitRules = ruleSet.filterSth ({
//            if let t = $0.time._time {
//                return t == time
//            }
//            return false
//        }) else {
//            return nil
//        }
//
//        // currently only for "now"
//        if let unit = unitRules.first(where: {$0._now != nil}) {
//            return unit._now?.first
//        }
//        // Choose either "previous", "past", "current", "next" or "future" based on time `value` sign.
//        // If "next" is not present, we fallback on "future"
//        // If "previous" is not present, we fallback on "past"
//        // If "current" is not present, we fallback on "past"
//        // If "past" is same as "future" then they're stored as "other".
//        // If there's only "other" then it's being collapsed.
//        switch value {
//        case -1:
//            // case -1 where unitRules["previous"] != nil:
//            // // If it is previous value -1, and previous unitRule exist
//            // quantifierKey = "previous"
//            if let rule = unitRules.first(where: {$0._previous != nil}) {
//                // If it is previous value -1, and previous unitRule exist
//                return rule._previous!.first
//            }
//
//        case 0:
//            // case 0 where unitRules.current != nil:
//            // // If it is current value 0, and current unitRule exist
//            // quantifierRules = unitRules.current
//            if let rule = unitRules.first(where: {$0._previous != nil}) {
//                // If it is previous value -1, and previous unitRule exist
//                return rule._previous!.first
//            }
//
//        case ...0:
//            // case ...0:
//            // // If value is up to 0 included, also fallback when current or previous isn't found
//            // quantifierRules = unitRules.past
//            if let rule = unitRules.first(where: {$0._oneUnitAgo != nil}) {
//                //TODO: _oneUnitAgo OR _manyUnitsAgo ??
//
//                // If value is up to 0 included, also fallback when current or previous isn't found
//                return rule._oneUnitAgo!.first
//            }
//
//        case 1:
//            // case 1 where unitRules.next != nil:
//            // // If it is next value 1, and next unitRule exist
//            // quantifierRules = unitRules.next
//            if let rule = unitRules.first(where: {$0._next != nil}) {
//                // If it is next value 1, and next unitRule exist
//                return rule._next!.first
//            }
//
//        case 1...:
//            // case 1...:
//            // // If it is future value >0, and fallback if next isn't found
//            // quantifierRules = unitRules.future
//            if let rule = unitRules.first(where: {$0._inOneUnit != nil}) {
//                //TODO: _inOneUnit OR _inManyUnits ??
//
//                // If it is future value >0, and fallback if next isn't found
//                return rule._inOneUnit!.first
//            }
//
//        default:
//            // Should never happen
//            fatalError()
//        }
        
        
        //        if let fixedValue = unitRules[quantifierKey] {
        //            return fixedValue
        //        }
        //
        //        guard let quantifierRules = unitRules[quantifierKey] as? [String: Any] else {
        //            return ""
        //        }
        
        //TODO: "other" will not be present when all String lang data will be replaced with Translation model
        // plural/translations forms
        // "other" rule is supposed to always be present.
        // If only "other" rule is present then "rules" is not an object and is a string.
        //        let quantifier = (lang.quantifyKey(for: abs(value)) ?? .other).rawValue
        //        if let r = quantifierRules[quantifier] as? String {
        //            return r
        //        }
        
        //TODO :check
        //return quantifierRules[LocaleID.PluralForm.other.s] as? String ?? ""
        
        //FIXME: need getters
//        if let rule = unitRules.first(where: {$0._inManyUnits != nil}) {
//            return rule._inManyUnits?.first
//        }
//        if let rule = unitRules.first(where: {$0._manyUnitsAgo != nil}) {
//            return rule._manyUnitsAgo?.first
//        }
//        return nil
    }
    
    /// Return the first suitable translStyle into the list which is available for a given locale.
    ///
    /// - Parameters:
    ///   - translStyles: ordered translations.
    ///   - locale: locale to use.
    /// - Returns: a pair of found flavor and locale table
    func suitableTranslation(in styles: [TimeTranslStyle],
                             for locale: Locale = .autoupdatingCurrent) -> (TimeTranslStyle, [TimeTranslation]) {
        
        let transl = getCachedTranslation(for: locale.langID)
        
        // get the locale table
        for style in styles {
            if let rule = transl[style] {
                return (style, rule)
                // found our required unit in passed locale
            }
        }
        
        // long must be always present
        let rule = transl[.long]!
        return (.long, rule)
    }
    
    /// Return a list of available time units in locale filtered by required units of style.
    /// If resulting array if empty there is not any time unit which can be represented with given locale so formatting fails.
    ///
    /// - Parameters:
    ///   - requiredUnits: required time units.
    /// - Returns: available units.
    func suitableUnits(in translUnit: [TimeTranslation],
                       requiredUnits: [Time]? = nil) -> [Time]? {
        
        let localeUnits = translUnit.map{$0.time}
        guard let restrictedModeUnits = requiredUnits else {
            return localeUnits.sth
        }
        // no restrictions
        return localeUnits.filterSth {
            restrictedModeUnits.contains($0)
        }
    }
    
    /// Return the best rule in ruleSet to represent given time interval.
    ///
    /// - Parameters:
    ///   - elapsed: elapsed interval to represent
    /// - Returns: best rule to represent
    func ruleToRepresent(_ elapsed: TimeInterval,
                         referenceInterval: TimeInterval,
                         units: [Time],
                         _ ruleSet: [Rule]) -> Rule? {
        
        // Leave only allowed time measurement units.
        // E.g. omit "quarter" unit.
        let filteredRuleSet = ruleSet.filter {
            units.contains($0.time)
        }
        
        // If no steps of ruleSet fit the conditions
        // then return nothing.
        guard !filteredRuleSet.isEmpty else {
            return nil
        }
        
        // Find the most appropriate ruleSet step
        let i = findRuleSetStep(elapsed: elapsed,
                                now: referenceInterval,
                                filteredRuleSet)
        guard i >= 0 else {
            return nil
        }
        let step = filteredRuleSet[i]
        
        // Apply granularity to the time amount
        // (and fall back to the previous step
        //  if the first level of granularity
        //  isn't met by this amount)
        if let granurality = step.granularity {
            
            // Recalculate the elapsed time amount based on granularity
            let amount = round( (elapsed / step.time.factor) / granurality) * granurality
            
            // If the granularity for this step
            // is too high, then fallback
            // to the previous step of ruleSet.
            // (if there is any previous step of ruleSet)
            if amount == 0 && i > 0 {
                return filteredRuleSet[i - 1]
            }
        }
        return step
    }
    
    func findRuleSetStep(elapsed: TimeInterval,
                         now: TimeInterval,
                         _ ruleSet: [Rule],
                         step: Int = 0) -> Int {
        // If the threshold for moving from previous step
        // to this step is too high then return the previous step.
        let fromRuleSet = ruleSet[step - 1]
        let currentRuleSet = ruleSet[step]
        let thresholdValue = threshold(from: fromRuleSet,
                                       to: currentRuleSet,
                                       now: now)
        
        if let t = thresholdValue, elapsed < t {
            return step - 1
        }
        
        // If it's the last step of ruleSet then return it.
        if step == ruleSet.count - 1 {
            return step
        }
        // Move to the next step.
        return findRuleSetStep(elapsed: elapsed,
                               now: now, ruleSet,
                               step: step + 1)
    }
    
    /// Evaluate threshold.
    func threshold(from fromRule: Rule?,
                   to toRule: Rule,
                   now: TimeInterval) -> Double? {
        
        // Allows custom thresholds when moving
        // from a specific step to a specific step.
        guard let fromStepUnit = fromRule?.time else {
            return nil
        }
        if let threshold = toRule.thresholdPrevious?[fromStepUnit] {
            return threshold
        }
        
        // If no custom threshold is set for this transition
        // then use the usual threshold for the next step.
        return toRule.threshold?.evaluate(for: now)
    }
    
    //MARK: cachedTranslations
    
    func getCachedTranslation(for lang: LocaleID) -> TimeTranslRuleSet {
        
        if let transl = cachedTranslations[lang] {
            return transl
        }
        let transl = lang.translation
        cachedTranslations[lang] = transl
        return transl
    }
    
    func getCachedTranslation(for locale: Locale) -> TimeTranslRuleSet {
        return getCachedTranslation(for: locale.langID)
    }
}


fileprivate extension Locale {
    
    /// by default uses English
    var langID: LocaleID {
        
        let localeId = self.collatorIdentifier ?? LocaleID.english.locale.collatorIdentifier!
        
        if let langID = LocaleID(rawValue: localeId) {
            return langID
        }
        if let str = localeId.components(separatedBy: "_").first,
            let fallbackTranslStyles = LocaleID(rawValue: str) {
            return fallbackTranslStyles
        }
        // fallback not found, return English
        return LocaleID.english.locale.langID
    }
}


extension DurationUnit {
    
    /// Factor of conversion of the unit to seconds
    var factor: Double {
        
        switch self {
        case .second:
            return 1
        case .minute:
            return 1.minutes.seconds
        case .hour:
            return 1.hours.seconds
        case .halfHour:
            return 1.hours.seconds * 0.5
        case .day:
            return 1.days.seconds
        case .week:
            return 1.weeks.seconds
        case .month:
            return 1.months.seconds
        case .year:
            return 1.years.seconds
        case .quarter:
            return 91.days.seconds + 6.hours.seconds //??
        }
    }
}

extension Time {

    //???
    /// Factor of conversion of the unit to seconds
    var factor: Double {
        fatalError()
        //TODO:
        //return _period?.unit.factor ?? 0.0
    }
}

//    "quarter" : [
//        "previous" : "vorige kwartaal",
//        "current" : "hierdie kwartaal",
//        "next" : "volgende kwartaal",
//        "past" : "{0} kwartale gelede",
//        "future" : "oor {0} kwartale"
//    ],
//    "month" : [
//        "past" : "{0} md. gelede",
//        "next" : "volgende maand",
//        "future" : "oor {0} md.",
//        "previous" : "verlede maand",
//        "current" : "vandeesmaand"
//    ],
//    "now" : "nou",
//    "hour" : [
//        "future" : "oor {0} uur",
//        "past" : "{0} uur gelede",
//        "current" : "hierdie uur"
//    ],
//    "minute" : [
//        "past" : "{0} min. gelede",
//        "current" : "hierdie minuut",
//        "future" : "oor {0} min."
//    ],
//    "day" : [
//        "previous" : "gister",
//        "future" : [
//            "one" : "oor {0} dag",
//            "other" : "oor {0} dae"
//        ],
//        "past" : [
//            "one" : "{0} dag gelede",
//            "other" : "{0} dae gelede"
//        ],
//        "current" : "vandag",
//        "next" : "môre"
//    ],
//    "year" : [
//        "next" : "volgende jaar",
//        "past" : "{0} jaar gelede",
//        "future" : "oor {0} jaar",
//        "previous" : "verlede jaar",
//        "current" : "hierdie jaar"
//    ],
//    "week" : [
//        "next" : "volgende week",
//        "previous" : "verlede week",
//        "past" : "{0} w. gelede",
//        "future" : "oor {0} w.",
//        "current" : "vandeesweek"
//    ],
//    "second" : [
//        "future" : "oor {0} sek.",
//        "current" : "nou",
//        "past" : "{0} sek. gelede"
//    ]
//]
