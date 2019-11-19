

public enum DateFormat {
    
    /// A generic standard format date i.e. "EEE MMM dd HH:mm:ss Z yyyy"
    case standard
    
    /// Extended format. "eee dd-MMM-yyyy GG HH:mm:ss.SSS zzz"
    case extended
    
    /// The RSS formatted date "EEE, d MMM yyyy HH:mm:ss ZZZ" i.e. "Fri, 09 Sep 2011 15:26:08 +0200"
    case rss
    
    /// The Alternative RSS formatted date "d MMM yyyy HH:mm:ss ZZZ" i.e. "09 Sep 2011 15:26:08 +0200"
    case altRSS
    
    /// The dotNet formatted date "/Date(%d%d)/" i.e. "/Date(1268123281843)/"
    case dotNet
    
    /// The http header formatted date "EEE, dd MMM yyyy HH:mm:ss zzz" i.e. "Tue, 15 Nov 1994 12:45:26 GMT"
    case httpHeader
    
    /// SQL date format: "yyyy-MM-dd'T'HH:mm:ss.SSSX"
    case sql
    
    /// custom string format
    case custom(Str)
    
    /// The ISO8601 formatted date, time and millisec "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
    case iso(ISO8601DateFormatter.Options?)
    
    /// Date only format (short = "2/27/17", medium = "Feb 27, 2017", long = "February 27, 2017", full = "Monday, February 27, 2017"
    case date(DateFormatter.Style)
    
    /// Time only format (short = "2:22 PM", medium = "2:22:06 PM", long = "2:22:06 PM EST", full = "2:22:06 PM Eastern Standard Time"
    case time(DateFormatter.Style)
    
    /// Date/Time format (short = "2/27/17, 2:22 PM", medium = "Feb 27, 2017, 2:22:06 PM", long = "February 27, 2017 at 2:22:06 PM EST", full = "Monday, February 27, 2017 at 2:22:06 PM Eastern Standard Time"
    case dateTime(DateFormatter.Style)
    
    //TODO: decide if TimeFormatter should be used at all
    //case relative(TimeFormatter.Style)
}


public extension DateFormat {
    
    //MARK: autoFormats
    
    /// This is the ordered list of all formats DateRegion can use in order to attempt parsing a passed date expressed as string. Evaluation is made in order; you can add or remove new formats as you wish.
    /// In order to reset the list call `resetAutoFormats()` function.
    static var autoFormats = builtInAutoFormats
    
    /// Reset the list of auto formats to the initial settings.
    static func resetAutoFormats() {
        autoFormats = builtInAutoFormats
    }
    
    /// This is the built-in list of all supported formats for auto-parsing of a string to a date.
    static let builtInAutoFormats: [Str] = [
        //this is handled by Foundation's ISO formatter
        //DateFormatString.iso8601.s,
        "yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'",
        "yyyy'-'MM'-'dd'T'HH':'mm':'ss'.'SSS'Z'",
        "yyyy-MM-dd'T'HH:mm:ss.SSSZ",
        "yyyy-MM-dd HH:mm:ss",
        "yyyy-MM-dd HH:mm",
        "yyyy-MM-dd",
        "h:mm:ss A",
        "h:mm A",
        "MM/dd/yyyy",
        "MMMM d, yyyy",
        "MMMM d, yyyy LT",
        "dddd, MMMM Date, yyyy LT",
        "yyyyyy-MM-dd",
        "yyyy-MM-dd",
        "yyyy-'W'ww-E",
        "GGGG-'['W']'ww-E",
        "yyyy-'W'ww",
        "GGGG-'['W']'ww",
        "yyyy'W'ww",
        "yyyy-ddd",
        "HH:mm:ss.SSSS",
        "HH:mm:ss",
        "HH:mm",
        "HH"
    ]
}

//MARK: DateFormatString

extension DateFormat {
    
    var dateFormatString: DateFormatString? {
        switch self {
        case .standard:
            return .standard
        case .extended:
            return .standard
        case .rss:
            return .rss
        case .altRSS:
            return .altRSS
        case .httpHeader:
            return .httpHeader
        case .sql:
            return .sql
            //TODO:?
//        case .dotNet:
//            return .dotNet
        default:
            return nil
            //               /// custom string format
            //               case custom(Str)
            //
            //
            //               /// standard iso format. The ISO8601 formatted date, time and millisec "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
            //               case iso(ISO8601DateFormatter.Options?)
            //
            //               /// Date only format (short = "2/27/17", medium = "Feb 27, 2017", long = "February 27, 2017", full = "Monday, February 27, 2017"
            //               case date(DateFormatter.Style)
            //
            //               /// Time only format (short = "2:22 PM", medium = "2:22:06 PM", long = "2:22:06 PM EST", full = "2:22:06 PM Eastern Standard Time"
            //               case time(DateFormatter.Style)
            //
            //               /// Date/Time format (short = "2/27/17, 2:22 PM", medium = "Feb 27, 2017, 2:22:06 PM", long = "February 27, 2017 at 2:22:06 PM EST", full = "Monday, February 27, 2017 at 2:22:06 PM Eastern Standard Time"
            //               case dateTime(DateFormatter.Style)
            //
            //               case relative(TimeFormatter.Style)
        }
    }
}


enum DateFormatString: Str, StrEnumT {
    
    /// A generic standard format date i.e. "EEE MMM dd HH:mm:ss Z yyyy"
    case standard = "EEE MMM dd HH:mm:ss Z yyyy"

    /// Extended format
    case extended = "eee dd-MMM-yyyy GG HH:mm:ss.SSS zzz"
    
    /// The Alternative RSS formatted date "d MMM yyyy HH:mm:ss ZZZ" i.e. "09 Sep 2011 15:26:08 +0200"
    case altRSS = "d MMM yyyy HH:mm:ss ZZZ"
    
    /// The RSS formatted date "EEE, d MMM yyyy HH:mm:ss ZZZ" i.e. "Fri, 09 Sep 2011 15:26:08 +0200"
    case rss = "EEE, d MMM yyyy HH:mm:ss ZZZ"
    
    /// The http header formatted date "EEE, dd MMM yyyy HH:mm:ss zzz" i.e. "Tue, 15 Nov 1994 12:45:26 GMT"
    case httpHeader = "EEE, dd MMM yyyy HH:mm:ss zzz"
    
    /// SQL date format
    case sql = "yyyy-MM-dd'T'HH:mm:ss.SSSX"
    
    //TODO: consider adding
    /// The dotNet formatted date "/Date(%d%d)/" i.e. "/Date(1268123281843)/"
    //case dotNet
    
    /// Default ISO8601 format string
    //case iso8601 = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
}

