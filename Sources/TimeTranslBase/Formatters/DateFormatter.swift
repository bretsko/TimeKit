
import Foundation


public extension DateFormatter {
    
    func format(_ date: Date,
                with mode: DateFormat,
                _ calendar: Calendar? = nil,
                _ zone: TimeZone = Date.defaultTimeZone,
                _ locale: Locale? = nil) -> String? {
        fatalError()
        //        switch mode {
        //        case .iso(let opts):
        //            let f: ISO8601DateFormatter
        //            if let options = opts {
        //                f = ISO8601DateFormatter.shared(reg.timeZone, options: options)
        //            } else {
        //                f = ISO8601DateFormatter.shared(reg.timeZone)
        //            }
        //            return f.string(from: date)
        //
        //        case .extended:
        //            return date.formatter(.extended).string(from: date)
        //
        //        case .rss:
        //            return date.formatter(.rss).string(from: date)
        //
        //        case .altRSS:
        //            return date.formatter(.altRSS).string(from: date)
        //
        //        case .sql:
        //            return date.formatter(.sql).string(from: date)
        //
        //        case .dotNet:
        //            let milliseconds = date.date.secondsSince1970 * 1000.0
        //            let tzOffsets = date.region.timeZone.secondsFromGMT(for: date) / 3600
        //            return String(format: "/Date(%.0f%+03d00)/",
        //                          milliseconds,
        //                          tzOffsets)
        //
        //        case .httpHeader:
        //            return date.formatter(.httpHeader).string(from: date)
        //
        //        case .custom(let format):
        //            return date.formatter(format: format).string(from: date)
        //
        //        case .standard:
        //            return date.formatter(.standard).string(from: date)
        //
        //        case .date(let style):
        //            let f = date.formatter()
        //            f.dateStyle = .none
        //            f.timeStyle = style
        //            return f.string(from: date)
        //
        //        case .time(let style):
        //            let f = date.formatter()
        //            f.dateStyle = .none
        //            f.timeStyle = style
        //            return f.string(from: date)
        //
        //        case .dateTime(let style):
        //            let f = date.formatter()
        //            f.dateStyle = style
        //            f.timeStyle = style
        //            return f.string(from: date)
        //
        //        case .relative(let style):
        //            return TimeFormatter.shared.format(date, style: style)
        //        }
    }


    /// Return a shared formatter wth set parameters
    /// - Parameters:
    ///   - calendar: if not given - user / system region is used
    ///   - locale: if not given - user / system region is used
    ///   - timeZone: if not given - user / system region is used
    ///   - format: optional format used to set the `dateFormat` property.
    static func shared(format: DateFormat = .standard,
                       _ calendar: Calendar = Date.defaultCalendar,
                       _ locale: Locale = Date.defaultLocale) -> DateFormatter {

        return shared(format: format.dateFormatString!.s,
                      calendar, locale)
    }
}
