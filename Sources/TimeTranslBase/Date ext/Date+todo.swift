



public extension Date {
    
    /// Initialize by parsing given string with the ordered list of passed formats.
    /// If you know the format of the string you should pass it in order to speed up the parsing process.
    /// If you don't know the format leave it `nil` and parse is done between all formats in `DateFormat.builtInAutoFormats`
    /// and the ordered list you can provide in `DateRegion.autoParseFormats` (with attempt priority set on your list).
    ///
    /// - Parameters:
    ///   - string: string with the date.
    ///   - formats: ordered list of formats to use.
    //    init?(_ string: Str,
    //          formats: [Str] = DateRegion.autoFormats,
    //          _ calendar: Calendar = Date.defaultCalendar) {
    //
    //        guard let date = string.parseDate(formats: formats, region) else {
    //            return nil
    //        }
    //        self = date
    //    }
    
    
    /// Initialize object from string expressed in given region.
    ///
    /// - Parameters:
    ///   - string: date expressed as string.
    ///   - format: format of the date (`nil` uses provided list of auto formats patterns. Pass it if you can in order to optimize the parse task).
    ///   - region: region in which the date is expressed. `nil` uses the `DateRegion.defaultRegion`.
    //    init?(_ string: Str,
    //          format: Str,
    //          _ calendar: Calendar = Date.defaultCalendar) {
    //        guard let date = string.parseDate(format: format, region) else {
    //            return nil
    //        }
    //        self = date
    //    }
    
    /// Initialize object from string expressed in given region.
    ///
    /// - Parameters:
    ///   - string: date expressed as string.
    ///   - format: format of the date (`nil` uses provided list of auto formats patterns. Pass it if you can in order to optimize the parse task).
    ///   - region: region in which the date is expressed. `nil` uses the `DateRegion.defaultRegion`.
    //    init?(_ string: Str,
    //          _ mode: DateParsingMode = .standard(.standard),
    //          _ calendar: Calendar = Date.defaultCalendar) {
    //        guard let date = string.parseDate(mode: mode, region) else {
    //            return nil
    //        }
    //        self = date
    //    }
    
    /**
     *  Init date from string, given a format string, according to Apple's date formatting guide, and time zone.
     *
     *  - parameter dateString: Date in the formatting given by the format parameter
     *  - parameter format: Format style using Apple's date formatting guide
     *  - parameter timeZone: Time zone of date
     */
    //    init?(_ string: Str,
    //          format: Str,
    //          _ timeZone: TimeZone = .autoupdatingCurrent) {
    //        let df = DateFormatter.shared()
    //        df.dateStyle = .none
    //        df.timeStyle = .none
    //        df.timeZone = timeZone
    //        df.dateFormat = format
    //        if let date = df.date(from: string) {
    //            self = date
    //        } else {
    //            return nil
    //        }
    //    }
    
    //MARK: formats
    
    //      /// DotNet: "/Date(1268123281843)/"
    //      static let DefaultFormat = "EEE MMM dd HH:mm:ss Z yyyy"
    //
    //      /// "Fri, 09 Sep 2011 15:26:08 +0200"
    //      static let RSSFormat = "EEE, d MMM yyyy HH:mm:ss ZZZ"
    //
    //      /// "09 Sep 2011 15:26:08 +0200"
    //      static let AltRSSFormat = "d MMM yyyy HH:mm:ss ZZZ"
    //
    //      static let minuteInSecs: Double = 60
    //      static let hourInSecs: Double = 3600
    //      static let dayInSecs: Double = 86400
    //      static let weekInSecs: Double = 604_800
    //      static let yearInSecs: Double = 31_556_926
    //
    //    // https://github.com/justinmakaila/NSDate-ISO-8601/blob/master/NSDateISO8601.swift
    //    ///  ISO8601 string of format (yyyy-MM-dd'T'HH:mm:ss.SSS) from date.
    //    ///     Date().iso8601String -> "2017-01-12T14:51:29.574Z"
    //    var iso8601String: Str {
    //
    //        let df = Date.df
    //        df.locale = LID(identifier: "en_US_POSIX")
    //        df.timeZone = TimeZone(abbreviation: "GMT")
    //        df.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS"
    //        return df.string(from: self).appending("Z")
    //    }
    //
    //    ///  Nearest five minutes to date.
    //    ///     var date = Date() // "5:54 PM"
    //    ///     date.minute = 32 // "5:32 PM"
    //    ///     date.nextFiveMinutes // "5:30 PM"
    //    ///     date.minute = 44 // "5:44 PM"
    //    ///     date.nextFiveMinutes // "5:45 PM"
    //    var nextFiveMinutes: Date {
    //        var c = userCal.comps([.year, .month, .day, .hour, .minute, .second, .nanosecond], from: self)
    //        let min = c.minute!
    //        c.minute! = min % 5 < 3 ? min - min % 5 : min + 5 - (min % 5)
    //        c.second = 0
    //        c.nanosecond = 0
    //        return userCal.date(from: c)!
    //    }
    //
    //    ///  Nearest ten minutes to date.
    //    ///     var date = Date() // "5:57 PM"
    //    ///     date.minute = 34 // "5:34 PM"
    //    ///     date.nextTenMinutes // "5:30 PM"
    //    ///     date.minute = 48 // "5:48 PM"
    //    ///     date.nextTenMinutes // "5:50 PM"
    //    var nextTenMinutes: Date {
    //        var c = userCal.comps([.year, .month, .day, .hour, .minute, .second, .nanosecond], from: self)
    //        let min = comps.minute!
    //        c.minute? = min % 10 < 6 ? min - min % 10 : min + 10 - (min % 10)
    //        c.second = 0
    //        c.nanosecond = 0
    //        return userCal.date(from: c)!
    //    }
    //
    //    ///  Nearest quarter hour to date.
    //    ///     var date = Date() // "5:57 PM"
    //    ///     date.minute = 34 // "5:34 PM"
    //    ///     date.nextQuarterHour // "5:30 PM"
    //    ///     date.minute = 40 // "5:40 PM"
    //    ///     date.nextQuarterHour // "5:45 PM"
    //    var nextQuarterHour: Date {
    //        var c = userCal.comps([.year, .month, .day, .hour, .minute, .second, .nanosecond], from: self)
    //        let min = c.minute!
    //        c.minute! = min % 15 < 8 ? min - min % 15 : min + 15 - (min % 15)
    //        c.second = 0
    //        c.nanosecond = 0
    //        return userCal.date(from: c)!
    //    }
    //
    //    ///  Nearest half hour to date.
    //    ///     var date = Date() // "6:07 PM"
    //    ///     date.minute = 41 // "6:41 PM"
    //    ///     date.nextHalfHour // "6:30 PM"
    //    ///     date.minute = 51 // "6:51 PM"
    //    ///     date.nextHalfHour // "7:00 PM"
    //    var nextHalfHour: Date {
    //        var c = userCal.comps([.year, .month, .day, .hour, .minute, .second, .nanosecond], from: self)
    //        let min = c.minute!
    //        c.minute! = min % 30 < 15 ? min - min % 30 : min + 30 - (min % 30)
    //        c.second = 0
    //        c.nanosecond = 0
    //        return userCal.date(from: c)!
    //    }
    //
    //    ///  Nearest hour to date.
    //    ///     var date = Date() // "6:17 PM"
    //    ///     date.nextHour // "6:00 PM"
    //    ///     date.minute = 36 // "6:36 PM"
    //    ///     date.nextHour // "7:00 PM"
    //    var nextHour: Date {
    //        let min = userCal.component(.minute, from: self)
    //        let c = Set<C.Component>([.year, .month, .day, .hour])
    //        let d = userCal.date(from: userCal.comps(c, from: self))!
    //
    //        if min < 30 {
    //            return d
    //        }
    //        return userCal.date(byAdding: .hour, value: 1, to: d)!
    //    }
    //
    //    ///  Time zone used currently by system.
    //    ///        Date().timeZone -> Europe/Istanbul (current)
    //    var timeZone: TimeZone {
    //        return userCal.timeZone
    //    }
    //
    //    ///  UNIX timestamp from date.
    //    /// Date().unixTimestamp -> 1484233862.826291
    //    var unixTimestamp: Double {
    //        return secondsSince1970
    //    }
    //
    //    enum TimeZoneSimple: Str, StrEnumT {
    //        case local, utc
    //    }
    //
    //    enum DateFormatString {
    //        case iso8601(ISO8601Format?), dotNet, rss, altRSS, custom(Str)
    //    }
    //    init(with str: Str,
    //         _ format: DateFormatString,
    //         _ timeZone: TimeZoneSimple = .local) {
    //
    //        guard str.hasSth else {
    //            self.init()
    //            return
    //        }
    //
    //        let str = str as NSString
    //
    //        let zone: TimeZone
    //
    //        switch timeZone {
    //        case .local:
    //            zone = NSTimeZone.local
    //        case .utc:
    //            zone = TimeZone(secondsFromGMT: 0)!
    //        }
    //
    //        switch format {
    //        case .dotNet:
    //
    //            let startIndex = str.range(of: "(").location + 1
    //            let endIndex = str.range(of: ")").location
    //            let range = NSRange(location: startIndex, length: endIndex - startIndex)
    //            let milliSecs = (str.substring(with: range) as NSString).longLongValue
    //            let interval = TimeInterval(milliSecs / 1000)
    //            self.init(secondsSince1970: interval)
    //
    //        case let .iso8601(isoFormat):
    //
    //            let dateFormat = (isoFormat != nil) ? isoFormat! : ISO8601Format(dateString: str as Str)
    //            let df = Date.df(dateFormat.rawValue)
    //            df.locale = LID(identifier: "en_US_POSIX")
    //            df.timeZone = NSTimeZone.local
    //            df.dateFormat = dateFormat.rawValue
    //            if let a = df.date(from: str as Str) {
    //                self.init(timeInterval: 0, since: a)
    //            } else {
    //                self.init()
    //            }
    //
    //        case .rss:
    //
    //            var s = str
    //            if str.hasSuffix("Z") {
    //                s = s.substring(to: s.length - 1).appending("GMT") as NSString
    //            }
    //            let df = Date.df(Date.RSSFormat)
    //            if let a = df.date(from: str as Str) {
    //                self.init(timeInterval: 0, since: a)
    //            } else {
    //                self.init()
    //            }
    //
    //        case .altRSS:
    //
    //            var s = str
    //            if str.hasSuffix("Z") {
    //                s = s.substring(to: s.length - 1).appending("GMT") as NSString
    //            }
    //            let df = Date.df(Date.AltRSSFormat)
    //            if let a = df.date(from: str as Str) {
    //                self.init(timeInterval: 0, since: a)
    //            } else {
    //                self.init()
    //            }
    //
    //        case let .custom(dateFormat):
    //
    //            let df = Date.df(dateFormat, zone)
    //            if let a = df.date(from: str as Str) {
    //                self.init(timeInterval: 0, since: a)
    //            } else {
    //                self.init()
    //            }
    //        }
    //    }
    //
    //    /// Returns a new Date by setting this Date's day to first.
    //    var firstOfMonth: Date? {
    //        let comps = userCal.comps([.year, .month], from: self)
    //        return userCal.date(from: comps)
    //    }
    //
    //    /// Returns a new Date by setting this Date's day to last.
    //    var lastOfMonth: Date? {
    //        guard let firstOfMonth = firstOfMonth else { return nil }
    //
    //        var comps = DateComps()
    //        comps.month = 1
    //        comps.day = -1
    //        return userCal.date(byAdding: comps, to: firstOfMonth)
    //    }
    //
    //    /// Returns a new Date by setting this Date's day and month to first.
    //    var firstOfYear: Date? {
    //
    //        let comps = userCal.comps([.year], from: self)
    //        return userCal.date(from: comps)
    //    }
    //
    //    /// Returns a new Date by setting this Date's day and month to last.
    //    var lastOfYear: Date? {
    //        guard let firstOfYear = firstOfYear else { return nil }
    //
    //        var comps = DateComps()
    //        comps.year = 1
    //        comps.day = -1
    //        return userCal.date(byAdding: comps, to: firstOfYear)
    //    }
    //
    //    /// Returns a new Date with the day following this Date.
    //    var nextDay: Date? {
    //        var comps = DateComps()
    //        comps.day = 1
    //        return userCal.date(byAdding: comps, to: self)
    //    }
    //
    //    /// Returns a new Date with the day preceding this Date.
    //    var previousDay: Date? {
    //        var comps = DateComps()
    //        comps.day = -1
    //        return userCal.date(byAdding: comps, to: self)
    //    }
    //
    //
    //    func isEqualToDateIgnoringTime(_ date: Date) -> Bool {
    //        let c1 = Date.comps(self)
    //        let c2 = Date.comps(date)
    //        return c1!.year == c2!.year && c1!.month == c2!.month && c1!.day == c2!.day
    //    }
    //
    //    //MARK: -
    //
    //
    //    func dateByAdding(days: Int) -> Date {
    //        var dcs = DateComps()
    //        dcs.day = days
    //        return userCal.date(byAdding: dcs, to: self)!
    //    }
    //
    //    func dateBySubtracting(days: Int) -> Date {
    //        var dcs = DateComps()
    //        dcs.day = days * -1
    //        return userCal.date(byAdding: dcs, to: self)!
    //    }
    //
    //    func dateByAdding(hours: Int) -> Date {
    //        var dcs = DateComps()
    //        dcs.hour = hours
    //        return userCal.date(byAdding: dcs, to: self)!
    //    }
    //
    //    func dateBySubtracting(hours: Int) -> Date {
    //        var dcs = DateComps()
    //        dcs.hour = hours * -1
    //        return userCal.date(byAdding: dcs, to: self)!
    //    }
    //
    //    func dateByAdding(minutes: Int) -> Date {
    //        var dcs = DateComps()
    //        dcs.minute = minutes
    //        return userCal.date(byAdding: dcs, to: self)!
    //    }
    //
    //    func dateBySubtracting(minutes: Int) -> Date {
    //        var dcs = DateComps()
    //        dcs.minute = minutes * -1
    //        return userCal.date(byAdding: dcs, to: self)!
    //    }
    //
    //    func dateByAdding(seconds: Int) -> Date {
    //        var dcs = DateComps()
    //        dcs.second = seconds
    //        return userCal.date(byAdding: dcs, to: self)!
    //    }
    //
    //    func dateBySubtracting(seconds: Int) -> Date {
    //        var dcs = DateComps()
    //        dcs.second = seconds * -1
    //        return userCal.date(byAdding: dcs, to: self)!
    //    }
    //
    //    //MARK: -
    //
    //    var isToday: Bool {
    //        return isEqualToDateIgnoringTime(Date())
    //    }
    //
    //    var isTomorrow: Bool {
    //        return isEqualToDateIgnoringTime(Date().dateByAdding(days:1))
    //    }
    //
    //    var isYesterday: Bool {
    //        return isEqualToDateIgnoringTime(Date().dateBySubtracting(days:1))
    //    }
    //
    //    func isSameWeek(as date: Date) -> Bool {
    //        let c1 = Date.comps(self)
    //        let c2 = Date.comps(date)
    //        // Must be same week. 12/31 and 1/1 will both be week "1" if they are in the same week
    //        if c1?.weekOfYear != c2?.weekOfYear {
    //            return false
    //        }
    //        // Must have a time interval under 1 week
    //        return abs(seconds(since: date)) < Date.weekInSecs
    //    }
    //
    //    var isThisWeek: Bool {
    //        return isSameWeek(as: Date())
    //    }
    //
    //    var isNextWeek: Bool {
    //        let interval = Date().timeIntervalSinceReferenceDate + Date.weekInSecs
    //        let d = Date(timeIntervalSinceReferenceDate: interval)
    //        return isSameWeek(as: d)
    //    }
    //
    //    var isLastWeek: Bool {
    //        let interval = Date().timeIntervalSinceReferenceDate - Date.weekInSecs
    //        let d = Date(timeIntervalSinceReferenceDate: interval)
    //        return isSameWeek(as: d)
    //    }
    //
    //    func isSameYear(as date: Date) -> Bool {
    //        let c1 = Date.comps(self)
    //        let c2 = Date.comps(date)
    //        return c1!.year == c2!.year
    //    }
    //
    //
    //    func isSameMonth(as date: Date) -> Bool {
    //        let c1 = Date.comps(self)
    //        let c2 = Date.comps(date)
    //        return c1!.year == c2!.year && c1!.month == c2!.month
    //    }
    //
    //
    //    var isThisYear: Bool {
    //        return isSameYear(as: Date())
    //    }
    //
    //    var isNextYear: Bool {
    //        let c1 = Date.comps(self)
    //        let c2 = Date.comps(Date())
    //        return c1!.year! == c2!.year! + 1
    //    }
    //
    //    var isLastYear: Bool {
    //        let c1 = Date.comps(self)
    //        let c2 = Date.comps(Date())
    //        return c1!.year! == c2!.year! - 1
    //    }
    //
    //
    //    func isEarlier(than date: Date) -> Bool {
    //        return nsDate.earlierDate(date) == self
    //    }
    //
    //    func isLater(than date: Date) -> Bool {
    //        return nsDate.laterDate(date) == self
    //    }
    //
    //    var firstDayOfWeek: Date {
    //        var weekStart = Date()
    //        var interval = TimeInterval()
    //
    //        _ = userCal.dateInterval(of: .weekOfYear, start: &weekStart, interval: &interval, for: self)
    //        return weekStart
    //    }
    //
    //    var etaShort: Str {
    //        let df = DateComponentsFormatter.shared()
    //        df.allowedUnits = [.day, .hour, .minute]
    //        df.unitsStyle = .short
    //        return df.string(from: Date(), to: self) ?? "-"
    //    }
    //
    //    var etaFull: Str {
    //        let df = DateComponentsFormatter.shared()
    //        df.allowedUnits = [.day, .hour, .minute]
    //        df.unitsStyle = .short
    //        return df.string(from: Date(), to: self) ?? "-"
    //    }
    //
    //    var startOfDay: Date {
    //        return userCal.startOfDay(for: self)
    //    }
    //
    //    var endOfDay: Date {
    //        var c = DateComps()
    //        c.day = 1
    //        return userCal.date(byAdding: c, to: startOfDay)!.addingTimeInterval(-1)
    //    }
    //
    //    var percentageOfDay: Double {
    //        let totalSecs = endOfDay.seconds(since: startOfDay) + 1
    //        let secs = seconds(since: startOfDay)
    //        let percentage = secs / totalSecs
    //        return max(min(percentage, 1.0), 0.0)
    //    }
    //
    //    var numWeeksInMonth: Int {
    //        return userNSCal.range(of: NSCalendar.Unit.weekOfYear, in: NSCalendar.Unit.month, for: self).length
    //    }
    //
    //    //MARK: -
    //
    //    ///  Date by adding multiples of calendar component.
    //    ///     let date = Date() // "Jan 12, 2017, 7:07 PM"
    //    ///     let date2 = date.adding(.minute, value: -10) // "Jan 12, 2017, 6:57 PM"
    //    ///     let date3 = date.adding(.day, value: 4) // "Jan 16, 2017, 7:07 PM"
    //    ///     let date4 = date.adding(.month, value: 2) // "Mar 12, 2017, 7:07 PM"
    //    ///     let date5 = date.adding(.year, value: 13) // "Jan 12, 2030, 7:07 PM"
    //    /// - Parameters:
    //    ///   - component: component type.
    //    ///   - value: multiples of comps to add.
    //    /// - Returns: original date + multiples of component added.
    //    func adding(_ comp: CalendarComp,
    //                value: Int) -> Date {
    //        return userCal.date(byAdding: comp, value: value, to: self)!
    //    }
    //
    //    ///  Add calendar component to date.
    //    ///     var date = Date() // "Jan 12, 2017, 7:07 PM"
    //    ///     date.add(.minute, value: -10) // "Jan 12, 2017, 6:57 PM"
    //    ///     date.add(.day, value: 4) // "Jan 16, 2017, 7:07 PM"
    //    ///     date.add(.month, value: 2) // "Mar 12, 2017, 7:07 PM"
    //    ///     date.add(.year, value: 13) // "Jan 12, 2030, 7:07 PM"
    //    /// - Parameters:
    //    ///   - component: component type.
    //    ///   - value: multiples of compnenet to add.
    //    mutating func add(_ comp: CalendarComp,
    //                      value: Int) {
    //        if let a = userCal.date(byAdding: comp, value: value, to: self) {
    //            self = a
    //        }
    //    }
    //
    //    ///  Date by changing value of calendar component.
    //    ///     let date = Date() // "Jan 12, 2017, 7:07 PM"
    //    ///     let date2 = date.changing(.minute, value: 10) // "Jan 12, 2017, 6:10 PM"
    //    ///     let date3 = date.changing(.day, value: 4) // "Jan 4, 2017, 7:07 PM"
    //    ///     let date4 = date.changing(.month, value: 2) // "Feb 12, 2017, 7:07 PM"
    //    ///     let date5 = date.changing(.year, value: 2000) // "Jan 12, 2000, 7:07 PM"
    //    /// - Parameters:
    //    ///   - component: component type.
    //    ///   - value: new value of compnenet to change.
    //    /// - Returns: original date after changing given component to given value.
    //    func changing(_ comp: CalendarComp,
    //                  value: Int) -> Date? {
    //        switch comp {
    //        case .nanosecond:
    //            let allowed = userCal.range(of: .nanosecond, in: .second, for: self)!
    //            guard allowed.contains(value) else { return nil }
    //
    //            let curNanoSecs = userCal.component(.nanosecond, from: self)
    //            let nanoSecsToAdd = value - curNanoSecs
    //            return userCal.date(byAdding: .nanosecond, value: nanoSecsToAdd, to: self)
    //
    //        case .second:
    //            let allowed = userCal.range(of: .second, in: .minute, for: self)!
    //            guard allowed.contains(value) else { return nil }
    //
    //            let curSecs = userCal.component(.second, from: self)
    //            let secsToAdd = value - curSecs
    //            return userCal.date(byAdding: .second, value: secsToAdd, to: self)
    //
    //        case .minute:
    //            let allowed = userCal.range(of: .minute, in: .hour, for: self)!
    //            guard allowed.contains(value) else { return nil }
    //
    //            let curMinutes = userCal.component(.minute, from: self)
    //            let minutesToAdd = value - curMinutes
    //            return userCal.date(byAdding: .minute, value: minutesToAdd, to: self)
    //
    //        case .hour:
    //            let allowed = userCal.range(of: .hour, in: .day, for: self)!
    //            guard allowed.contains(value) else { return nil }
    //
    //            let curHour = userCal.component(.hour, from: self)
    //            let hoursToAdd = value - curHour
    //            return userCal.date(byAdding: .hour, value: hoursToAdd, to: self)
    //
    //        case .day:
    //            let allowed = userCal.range(of: .day, in: .month, for: self)!
    //            guard allowed.contains(value) else { return nil }
    //
    //            let curDay = userCal.component(.day, from: self)
    //            let daysToAdd = value - curDay
    //            return userCal.date(byAdding: .day, value: daysToAdd, to: self)
    //
    //        case .month:
    //            let allowed = userCal.range(of: .month, in: .year, for: self)!
    //            guard allowed.contains(value) else { return nil }
    //
    //            let curMonth = userCal.component(.month, from: self)
    //            let monthsToAdd = value - curMonth
    //            return userCal.date(byAdding: .month, value: monthsToAdd, to: self)
    //
    //        case .year:
    //            guard value > 0 else { return nil }
    //
    //            let curYear = userCal.component(.year, from: self)
    //            let yearsToAdd = value - curYear
    //            return userCal.date(byAdding: .year, value: yearsToAdd, to: self)
    //
    //        default:
    //            return userCal.date(bySetting: comp, value: value, of: self)
    //        }
    //    }
    //
    //    ///  Data at the beginning of calendar component.
    //    ///     let date = Date() // "Jan 12, 2017, 7:14 PM"
    //    ///     let date2 = date.beginning(of: .hour) // "Jan 12, 2017, 7:00 PM"
    //    ///     let date3 = date.beginning(of: .month) // "Jan 1, 2017, 12:00 AM"
    //    ///     let date4 = date.beginning(of: .year) // "Jan 1, 2017, 12:00 AM"
    //    /// - Parameter component: calendar component to get date at the beginning of.
    //    /// - Returns: date at the beginning of calendar component (if applicable).
    //    func beginning(of comp: CalendarComp) -> Date? {
    //        if comp == .day {
    //            return userCal.startOfDay(for: self)
    //        }
    //
    //        var comps: Set<C.Component> {
    //            switch comp {
    // case .second:
    //                return [.year, .month, .day, .hour, .minute, .second]
    //
    // case .minute:
    //                return [.year, .month, .day, .hour, .minute]
    //
    // case .hour:
    //                return [.year, .month, .day, .hour]
    //
    // case .weekOfYear, .weekOfMonth:
    //                return [.yearForWeekOfYear, .weekOfYear]
    //
    // case .month:
    //                return [.year, .month]
    //
    // case .year:
    //                return [.year]
    //
    //            default:
    //                return []
    //            }
    //        }
    //
    //        guard comps.hasSth else { return nil }
    //        return userCal.date(from: userCal.comps(comps, from: self))
    //    }
    //
    //    ///  Date at the end of calendar component.
    //    ///     let date = Date() // "Jan 12, 2017, 7:27 PM"
    //    ///     let date2 = date.end(of: .day) // "Jan 12, 2017, 11:59 PM"
    //    ///     let date3 = date.end(of: .month) // "Jan 31, 2017, 11:59 PM"
    //    ///     let date4 = date.end(of: .year) // "Dec 31, 2017, 11:59 PM"
    //    /// - Parameter component: calendar component to get date at the end of.
    //    /// - Returns: date at the end of calendar component (if applicable).
    //    func end(of comp: CalendarComp) -> Date? {
    //        switch comp {
    //        case .second:
    //            var d = adding(.second, value: 1)
    //            d = userCal.date(
    //                from:
    //                userCal.comps([.year, .month, .day, .hour, .minute, .second], from: d)
    //                )!
    //            d.add(.second, value: -1)
    //            return d
    //
    //        case .minute:
    //            var d = adding(.minute, value: 1)
    //            let after = userCal.date(
    //                from:
    //                userCal.comps([.year, .month, .day, .hour, .minute], from: d)
    //                )!
    //            d = after.adding(.second, value: -1)
    //            return d
    //
    //        case .hour:
    //            var d = adding(.hour, value: 1)
    //            let after = userCal.date(
    //                from:
    //                userCal.comps([.year, .month, .day, .hour], from: d)
    //                )!
    //            d = after.adding(.second, value: -1)
    //            return d
    //
    //        case .day:
    //            var d = adding(.day, value: 1)
    //            d = userCal.startOfDay(for: d)
    //            d.add(.second, value: -1)
    //            return d
    //
    //        case .weekOfYear, .weekOfMonth:
    //            var d = self
    //            let weekStart = userCal.date(from:
    //                userCal.comps([.yearForWeekOfYear, .weekOfYear], from: d)
    //                )!
    //            d = weekStart.adding(.day, value: 7).adding(.second, value: -1)
    //            return d
    //
    //        case .month:
    //            var d = adding(.month, value: 1)
    //            let after = userCal.date(from:
    //                userCal.comps([.year, .month], from: d)
    //                )!
    //            d = after.adding(.second, value: -1)
    //            return d
    //
    //        case .year:
    //            var d = adding(.year, value: 1)
    //            let after = userCal.date(from:
    //                userCal.comps([.year], from: d)
    //                )!
    //            d = after.adding(.second, value: -1)
    //            return d
    //
    //        default:
    //            return nil
    //        }
    //    }
    //
    //    ///  Check if date is in current given calendar component.
    //    ///     Date().isInCurrent(.day) -> true
    //    ///     Date().isInCurrent(.year) -> true
    //    /// - Parameter component: calendar component to check.
    //    /// - Returns: true if date is in current given calendar component.
    //    func isInCurrent(_ comp: CalendarComp) -> Bool {
    //        return userCal.isDate(self, equalTo: Date(), toGranularity: comp)
    //    }
    //
    //    ///  Date string from date.
    //    ///     Date().string(withFormat: "dd/MM/yyyy") -> "1/12/17"
    //    ///     Date().string(withFormat: "HH:mm") -> "23:50"
    //    ///     Date().string(withFormat: "dd/MM/yyyy HH:mm") -> "1/12/17 23:50"
    //    /// - Parameter format: Date format (default is "dd/MM/yyyy").
    //    /// - Returns: date string.
    //    func string(withFormat format: Str = "dd/MM/yyyy HH:mm") -> Str {
    //        Date.df.dateFormat = format
    //        return Date.df.string(from: self)
    //    }
    //
    //    ///  Date string from date.
    //    ///     Date().dateString(ofStyle: .short) -> "1/12/17"
    //    ///     Date().dateString(ofStyle: .medium) -> "Jan 12, 2017"
    //    ///     Date().dateString(ofStyle: .long) -> "January 12, 2017"
    //    ///     Date().dateString(ofStyle: .full) -> "Thursday, January 12, 2017"
    //    /// - Parameter style: DateFormatter style (default is .medium).
    //    /// - Returns: date string.
    //    func dateString(with style: DateFormatter.Style = .medium) -> Str {
    //        Date.df.timeStyle = .none
    //        Date.df.dateStyle = style
    //        return Date.df.string(from: self)
    //    }
    //
    //    ///  Date and time string from date.
    //    ///     Date().dateTimeString(ofStyle: .short) -> "1/12/17, 7:32 PM"
    //    ///     Date().dateTimeString(ofStyle: .medium) -> "Jan 12, 2017, 7:32:00 PM"
    //    ///     Date().dateTimeString(ofStyle: .long) -> "January 12, 2017 at 7:32:00 PM GMT+3"
    //    ///     Date().dateTimeString(ofStyle: .full) -> "Thursday, January 12, 2017 at 7:32:00 PM GMT+03:00"
    //    /// - Parameter style: DateFormatter style (default is .medium).
    //    /// - Returns: date and time string.
    //    func dateTimeString(with style: DateFormatter.Style = .medium) -> Str {
    //
    //        Date.df.timeStyle = style
    //        Date.df.dateStyle = style
    //        return Date.df.string(from: self)
    //    }
    //
    //    ///  Time string from date
    //    ///     Date().timeString(ofStyle: .short) -> "7:37 PM"
    //    ///     Date().timeString(ofStyle: .medium) -> "7:37:02 PM"
    //    ///     Date().timeString(ofStyle: .long) -> "7:37:02 PM GMT+3"
    //    ///     Date().timeString(ofStyle: .full) -> "7:37:02 PM GMT+03:00"
    //    /// - Parameter style: DateFormatter style (default is .medium).
    //    /// - Returns: time string.
    //    func timeString(with style: DateFormatter.Style = .medium) -> Str {
    //
    //        Date.df.timeStyle = style
    //        Date.df.dateStyle = .none
    //        return Date.df.string(from: self)
    //    }
    
    
    //    ///  Day name format.
    //     /// - threeLetters: 3 letter day abbreviation of day name.
    //     /// - oneLetter: 1 letter day abbreviation of day name.
    //     /// - full: Full day name.
    //     enum DayNameStyle: Str, Hashable {
    //         case threeLetters
    //         case oneLetter
    //         case full
    //     }
    //
    //     ///  Month name format.
    //     /// - threeLetters: 3 letter month abbreviation of month name.
    //     /// - oneLetter: 1 letter month abbreviation of month name.
    //     /// - full: Full month name.
    //     enum MonthStyle: Str, Hashable {
    //         case threeLetters
    //         case oneLetter
    //         case full
    //     }
    //
    //    // http://www.codingexplorer.com/swiftly-getting-human-readable-date-nsdateformatter/
    //    ///  Day name from date.
    //    ///     Date().dayName(ofStyle: .oneLetter) -> "T"
    //    ///     Date().dayName(ofStyle: .threeLetters) -> "Thu"
    //    ///     Date().dayName(ofStyle: .full) -> "Thursday"
    //    /// - Parameter Style: style of day name (default is DayNameStyle.full).
    //    /// - Returns: day name string (example: W, Wed, Wednesday).
    //    func dayName(with style: DayNameStyle = .full) -> Str {
    //
    //        var format: Str {
    //            switch style {
    // case .oneLetter:
    //                return "EEEEE"
    // case .threeLetters:
    //                return "EEE"
    // case .full:
    //                return "EEEE"
    //            }
    //        }
    //        Date.df.setLocalizedDateFormatFromTemplate(format)
    //        return Date.df.string(from: self)
    //    }
    //
    //    // http://www.codingexplorer.com/swiftly-getting-human-readable-date-nsdateformatter/
    //    ///  Month name from date.
    //    ///     Date().monthName(ofStyle: .oneLetter) -> "J"
    //    ///     Date().monthName(ofStyle: .threeLetters) -> "Jan"
    //    ///     Date().monthName(ofStyle: .full) -> "January"
    //    /// - Parameter Style: style of month name (default is MonthStyle.full).
    //    /// - Returns: month name string (example: Date, Dec, December).
    //    func monthName(with style: MonthStyle = .full) -> Str {
    //
    //        var format: Str {
    //            switch style {
    // case .oneLetter:
    //                return "MMMMM"
    // case .threeLetters:
    //                return "MMM"
    // case .full:
    //                return "MMMM"
    //            }
    //        }
    //        Date.df.setLocalizedDateFormatFromTemplate(format)
    //        return Date.df.string(from: self)
    //    }
    //
    //
    //    func seconds(since date: Date) -> Double {
    //        return seconds(since: date)
    //    }
    //
    //    func minutes(since date: Date) -> Double {
    //        return seconds(since: date) / 60
    //    }
    //
    //    func hours(since date: Date) -> Double {
    //        return seconds(since: date) / 3600
    //    }
    //
    //    func days(since date: Date) -> Double {
    //        return seconds(since: date) / (3600 * 24)
    //    }
    //
    //    func isBetween(_ startDate: Date,
    //                   _ endDate: Date,
    //                   includeBounds: Bool = false) -> Bool {
    //        if includeBounds {
    //            return startDate.compare(self).rawValue * compare(endDate).rawValue >= 0
    //        }
    //        return startDate.compare(self).rawValue * compare(endDate).rawValue > 0
    //    }
    //
    //    ///  check if a date is a number of date comps of another date
    //    /// - Parameters:
    //    ///   - value: number of times component is used in creating range
    //    ///   - component: CalendarComp to use.
    //    ///   - date: Date to compare self to.
    //    /// - Returns: true if the date is within a number of comps of another date
    //    func isWithin(_ value: UInt,
    //                  _ comp: CalendarComp,
    //                  of date: Date) -> Bool {
    //        let comps = userCal.comps([comp], from: self, to: date)
    //        let compValue = comps.value(for: comp)!
    //        return abs(compValue) <= value
    //    }
    //
    //    //MARK: random
    //
    //    static var random: Date {
    //        let a = TimeInterval(arc4random_uniform(UInt32.max))
    //        return Date(secondsSince1970: a)
    //    }
    //
    //    static func randomWithinDaysBeforeToday(_ days: Int) -> Date {
    //        let today = Date()
    //        let earliest = today.addingTimeInterval(TimeInterval(-days*24*60*60))
    //
    //        return Date.random(between: earliest, and: today)
    //    }
    //
    //    static func random(between date1: Date,
    //                       and date2: Date) -> Date {
    //
    //        let interval = date2.seconds(since: date1)
    //        let randomInterval = TimeInterval(arc4random_uniform(UInt32(interval)))
    //        return date1.addingTimeInterval(randomInterval)
    //    }
    //
    //    //??
    //    ///  Random date between two dates.
    //    //    static func random(from fromDate: Date = Date.distantPast,
    //    //                       upTo toDate: Date = Date.distantFuture) -> Date {
    //    //        guard fromDate != toDate else {
    //    //            return fromDate
    //    //        }
    //    //
    //    //        let diff = llabs(Int(toDate.timeIntervalSinceReferenceDate - fromDate.timeIntervalSinceReferenceDate))
    //    //        var randValue: Int = 0
    //    //        arc4random_buf(&randValue, MemoryLayout<Int>.size)
    //    //        randValue = llabs(randValue % diff)
    //    //
    //    //        let startRefDate = toDate > fromDate ? fromDate : toDate
    //    //        return startRefDate.addingTimeInterval(TimeInterval(randValue))
    //    //    }
    //
    //
    //    // MARK: - Initializers
    //
    //
    //    ///  Create a new date form calendar comps.
    //    ///     let date = Date(year: 2010, month: 1, day: 12) // "Jan 12, 2010, 7:45 PM"
    //    /// - Parameters:
    //    ///   - calendar: Calendar (default is current).
    //    ///   - timeZone: TimeZone (default is current).
    //    ///   - era: Era (default is current era).
    //    ///   - year: Year (default is current year).
    //    ///   - month: Month (default is current month).
    //    ///   - day: Day (default is today).
    //    ///   - hour: Hour (default is current hour).
    //    ///   - minute: Minute (default is current minute).
    //    ///   - second: Second (default is current second).
    //    ///   - nanosecond: Nanosecond (default is current nanosecond).
    //    init?( calendar: Calendar? = userCal,
    //           timeZone: TimeZone? = TimeZone.current,
    //           era: Int? = Date().era,
    //           year: Int? = Date().year,
    //           month: Int? = Date().month,
    //           day: Int? = Date().day,
    //           hour: Int? = Date().hour,
    //           minute: Int? = Date().minute,
    //           second: Int? = Date().second,
    //           nanosecond: Int? = Date().nanoSecond) {
    //
    //        var c = DateComps()
    //        c.calendar = calendar
    //        c.timeZone = timeZone
    //        c.era = era
    //        c.year = year
    //        c.month = month
    //        c.day = day
    //        c.hour = hour
    //        c.minute = minute
    //        c.second = second
    //        c.nanosecond = nanosecond
    //
    //        if let a = calendar?.date(from: c) {
    //            self = a
    //        } else {
    //            return nil
    //        }
    //    }
    //
    //    // https://github.com/justinmakaila/NSDate-ISO-8601/blob/master/NSDateISO8601.swift
    //    ///  Create date object from ISO8601 string.
    //    ///     let date = Date(iso8601String: "2017-01-12T16:48:00.959Z") // "Jan 12, 2017, 7:48 PM"
    //    /// - Parameter iso8601String: ISO8601 string of format (yyyy-MM-dd'T'HH:mm:ss.SSSZ).
    //    init?(iso8601String: Str) {
    //
    //        let df = Date.df
    //        df.locale = LID(identifier: "en_US_POSIX")
    //        df.timeZone = TimeZone.current
    //        df.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
    //        if let a = df.date(from: iso8601String) {
    //            self = a
    //        } else {
    //            return nil
    //        }
    //    }
    //
    //    ///  Create new date object from UNIX timestamp.
    //    ///     let date = Date(unixTimestamp: 1484239783.922743) // "Jan 12, 2017, 7:49 PM"
    //    /// - Parameter unixTimestamp: UNIX timestamp.
    //    init(unixTimestamp: Double) {
    //        self.init(secondsSince1970: unixTimestamp)
    //    }
    //
    //    ///  Create date object from Int literal
    //    ///     let date = Date(integerLiteral: 2017_12_25) // "2017-12-25 00:00:00 +0000"
    //    /// - Parameter value: Int value, e.g. 20171225, or 2017_12_25 etc.
    //    init?(integerLiteral value: Int) {
    //        let df = Date.df
    //        df.dateFormat = "yyyyMMdd"
    //        guard let a = df.date(from: Str(value)) else { return nil }
    //        self = a
    //    }
}


//fileprivate extension Date {
//
//    // MARK: Static Cached Formatters
//
//    /// Returns a cached static array of NSDateFormatters so that thy are only created once.
//    static var sharedDateFormatters: [Str: DateFormatter] {
//        struct Static {
//            static var formatters: [Str: DateFormatter]? = [Str: DateFormatter]()
//        }
//        return Static.formatters!
//    }
//
//    /**
//     Returns a cached df based on the format, timeZone and locale. Formatters are cached in a singleton array using hashkeys generated by format, timeZone and locale.
//
//     - Parameter format: The format to use.
//     - Parameter timeZone: The time zone to use, defaults to the local time zone.
//     - Parameter locale: The locale to use, defaults to the current locale
//     - Returns The date df.
//     */
//    static func df(_ format: Str = DefaultFormat,
//                   _ timeZone: TimeZone = TimeZone.current,
//                   locale: LID = LID.current) -> DateFormatter {
//        let hashKey = "\(format.hashValue)\(timeZone.hashValue)\(locale.hashValue)"
//        var formatters = Date.sharedDateFormatters
//        if let cachedDF = formatters[hashKey] {
//            return cachedDF
//        }
//        let df = Date.df
//        df.dateFormat = format
//        df.timeZone = timeZone
//        df.locale = locale
//        formatters[hashKey] = df
//        return df
//    }
//
//    /**
//     Returns a cached df based on date style, time style and relative date. Formatters are cached in a singleton array using hashkeys generated by date style, time style, relative date, timeZone and locale.
//
//     - Parameter dateStyle: The date style to use.
//     - Parameter timeStyle: The time style to use.
//     - Parameter doesRelativeDateFormatting: Enables relative date formatting.
//     - Parameter timeZone: The time zone to use.
//     - Parameter locale: The locale to use.
//     - Returns The date df.
//     */
//    static func df(_ dateStyle: DateFormatter.Style,
//                   _ timeStyle: DateFormatter.Style,
//                   doesRelativeDateFormatting: Bool,
//                   _ timeZone: TimeZone = NSTimeZone.local,
//                   _ locale: LID = LID.current) -> DateFormatter {
//        var formatters = Date.sharedDateFormatters
//        let hashKey = "\(dateStyle.hashValue)\(timeStyle.hashValue)\(doesRelativeDateFormatting.hashValue)\(timeZone.hashValue)\(locale.hashValue)"
//        if let cachedDF = formatters[hashKey] {
//            return cachedDF
//        }
//        let df = Date.df
//        df.dateStyle = dateStyle
//        df.timeStyle = timeStyle
//        df.doesRelativeDateFormatting = doesRelativeDateFormatting
//        df.timeZone = timeZone
//        df.locale = locale
//        formatters[hashKey] = df
//        return df
//    }
//}
