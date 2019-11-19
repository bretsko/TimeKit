

@_exported import DateKit


public extension String {
    
    /// Parses a new string using all the suggested formats
    /// By default uses a set of predefined formats
    func parseDate(formats: [String] = DateFormat.autoFormats,
                   _ calendar: Calendar? = nil) -> Date? {
        fatalError()
        //        let formatter = DateFormatter.shared(region)
        //
        //        for format in formats {
        //            formatter.dateFormat = format
        //            if let date = formatter.date(from: self) {
        //                return date
        //            }
        //        }
        //        return nil
    }
    
    /// Parse a new string using the passed format in which is encoded.
    func parseDate(format: String,
                   _ calendar: Calendar = Date.defaultCalendar) -> Date? {
        fatalError()
        //return parseDate(formats: [format], region)
    }
    
    
    //MARK: - parseDate with DateParsingMode
    
    //TODO: divide DateParsingMode into modes requiring region, and those working with only one (like DotNet, RSS). Need to study this question
    
    /// - warning: rss, altRss and DotNet ignore region argument
    func parseDate(mode: DateParsingMode,
                   _ calendar: Calendar = Date.defaultCalendar) -> Date? {
        fatalError()
        //        switch mode {
        //        case .standard(let dateFormat):
        //            switch dateFormat {
        // case .rss,
        //                 .altRSS:
        //                let f = DateFormatter.shared(format: mode.dateFormat!, .iso)
        //                return f.date(from: self)
        //
        // case .dotNet:
        //                return parseDotNETDate()
        //
        // case .iso(let options):
        //                let f: ISO8601DateFormatter
        //                if let opts = options {
        //                    f = ISO8601DateFormatter.shared(region.timeZone, options: opts)
        //                } else {
        //                    f = ISO8601DateFormatter.shared(region.timeZone)
        //                }
        //                return f.date(from: self)
        //            default:
        //                let f = DateFormatter.shared(format: mode.dateFormat!, region)
        //                return f.date(from: self)
        //        }
        //
        //        case .custom(let format, let lenient):
        //            let f = DateFormatter.shared(format: format, region)
        //            if lenient {
        //            } else {
        //                f.isLenient = false
        //            }
        //            return f.date(from: self)
        //        }
    }
    
    //MARK: - convs
    
    /// Default ISO8601 format string
    /// "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
    func parseISODate(options: ISO8601DateFormatter.Options? = nil,
                      _ timeZone: TimeZone) -> Date? {
        fatalError()
        //        let f: ISO8601DateFormatter
        //        if let options = options {
        //            f = ISO8601DateFormatter.shared(timeZone, options: options)
        //        } else {
        //            f = ISO8601DateFormatter.shared(timeZone)
        //        }
        //        return f.date(from: self)
    }
    
    func parseDotNETDate() -> Date? {
        
        let pattern = "\\/Date\\((-?\\d+)((?:[\\+\\-]\\d+)?)\\)\\/"
        
        guard let parser = try? NSRegularExpression(pattern: pattern, options: .caseInsensitive) else {
            return nil
        }
        
        let rng = NSRange(location: 0, length: self.count)
        guard let match = parser.firstMatch(in: self,
                                            options: .reportCompletion,
                                            range: rng) else {
                                                return nil
        }
        
        let str = (self as NSString).substring(with: match.range(at: 1))
        guard let milliseconds = TimeInterval(str) else {
            return nil
        }
        
        //TODO: get and use parsed time zone in RDate?
        // Parse timezone
        //        let raw_tz = (string as NSString).substring(with: match.range(at: 2)) as NSString
        //        guard raw_tz.length > 1 else {
        //            return nil
        //        }
        //        let tz_sign: String = raw_tz.substring(to: 1)
        //        if tz_sign != "+", tz_sign != "-" {
        //            return nil
        //        }
        //
        //        let tz_hours: String = raw_tz.substring(with: NSRange(location: 1, length: 2))
        //        let tz_minutes: String = raw_tz.substring(with: NSRange(location: 3, length: 2))
        //
        //        let tz_offset = (Int(tz_hours)! * 60 * 60) + ( Int(tz_minutes)! * 60)
        //        guard let timeZone = TimeZone(secondsFromGMT: tz_offset) else {
        //            return nil
        //        }
        
        //TODO: test
        return Date(milliseconds: Double(milliseconds))
    }
    
    /// The RSS formatted date "EEE, d MMM yyyy HH:mm:ss ZZZ" i.e. "Fri, 09 Sep 2011 15:26:08 +0200"
    /// "EEE, d MMM yyyy HH:mm:ss ZZZ"
    /// if altRSS is true - parses The Alternative RSS formatted date "d MMM yyyy HH:mm:ss ZZZ" i.e. "09 Sep 2011 15:26:08 +0200"
    func parseRSSDate(altRSS: Bool,
                      _ timeZone: TimeZone) -> Date? {
        fatalError()
        //        if altRSS {
        //            return parseDate(mode: .standard(.altRSS), timeZone)
        //        }
        //        return parseDate(mode: .standard(.rss), timeZone)
    }
    
    /// SQL date format
    /// "yyyy-MM-dd'T'HH:mm:ss.SSSX"
    func parseSQLDate(_ timeZone: TimeZone) -> Date? {
        fatalError()
        //return parseDate(mode: .standard(.sql), timeZone)
    }
}


//public protocol ParseableToDate {
//
//    /// Convert a string to a `RDate` instance by parsing it with given parser
//    /// or using one of the built-in parser (if you know the format of the date you
//    /// should consider explicitly pass it to avoid unecessary computations).
//    ///
//    /// - Parameters:
//    ///   - format: format of the date, `nil` to leave the library to found the best
//    ///                one via `DateRegion.autoFormats`
//    ///   - region: region in which the date should be expressed in.
//    ///                Region's locale is used to format the date when using long readable unit names (like MMM
//    ///                for month).
//    /// - Returns: date in region representation, `nil` if parse fails
//    func parseDate(_ format: String?,
//                   _ region: DateRegion) -> Date?
//
//    /// Convert a string to a `RDate` instance by parsing it with the ordered list of provided formats.
//    /// If `formats` array is not provided it uses the `DateRegion.autoFormats` array instead.
//    /// Note: if you know the format of the date you should consider explicitly pass it to avoid unecessary computations.
//    ///
//    /// - Parameters:
//    ///   - format: ordered formats to parse date (if you don't have a list of formats you can pass `DateRegion.autoFormats`)
//    ///   - region: region in which the date should be expressed in.
//    ///   Region's locale is used to format the date when using long readable unit names (like MMM for month).
//    /// - Returns: date in region representation, `nil` if parse fails
//    func parseDate(_ formats: [String],
//                   _ region: DateRegion) -> Date?
//
//    /// Convert a string to a valid `RDate` using passed mode.
//    /// - Parameters:
//    ///   - mode: parsing mode.
//    ///   - region: region in which the date should be expressed in
//    /// - Returns: date in region representation, `nil` if parse fails
//    func parseDate(_ mode: DateParsingMode,
//                   _ region: DateRegion) -> Date?
//
//    /// Parses date from a valid ISO8601 string
//    ///
//    /// - Parameters:
//    ///   - options: options of the parser
//    ///   - region: region in which the date should be expressed in (timzone is ignored and evaluated automatically)
//    /// - Returns: date in region representation, `nil` if parse fails
//    func parseISODate(_ options: ISOParser.Options?,
//                      _ region: DateRegion?) -> Date?
//
//    /// Parses date from a valid DOTNET string
//    ///
//    ///   - region: region in which the date should be expressed in (timzone is ignored and evaluated automatically)
//    /// - Returns: date in region representation, `nil` if parse fails
//    func parseDotNETDate(_ region: DateRegion) -> Date?
//
//    /// Parses a date from a valid RSS/ALT RSS string
//    ///
//    /// - Parameters:
//    ///   - alt: `true` if string represent an ALT RSS formatted date, `false` if a standard RSS formatted date.
//    ///   - region: region in which the date should be expressed in (timzone is ignored and evaluated automatically)
//    /// - Returns: date in region representation, `nil` if parse fails
//    func parseRSSDate(altRSS: Bool,
//                      _ region: DateRegion) -> Date?
//
//    /// Parses a date from a valid SQL format string.
//    ///
//    /// - Parameters:
//    ///   - region: region in which the date should be expressed in (timzone is ignored and evaluated automatically)
//    /// - Returns: date in region representation, `nil` if parse fails
//    func parseSQLDate(_ region: DateRegion) -> Date?
//}
