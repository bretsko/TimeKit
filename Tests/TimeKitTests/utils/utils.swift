

import TimeKitBase
import Quick
import Nimble


let currentYear = Date().year
let currentYearShort = Date()._year!.last2nums
let currentMonth = Date().month


//extension Date {
//    
//    func format(format: String) -> String? {
//        switch format {
//        case "dotnet":
//            return dotNETString()
//        case "rss":
//            return rssString(altRSSType: false)
//        case "rss_alt":
//            return rssString(altRSSType: true)
//        case "sql":
//            return sqlString()
//        case "iso":
//            return isoString()
//        default:
//            return nil
//        }
//    }
//}

//extension String {
//    func parseDate(_ format: String,
//                   _ region: DateRegion) -> Date? {
//        switch format {
//        case "dotnet":
//            return parseDotNETDate()
//        case "rss":
//            return parseRSSDate(altRSS: false, region)
//        case "rss_alt":
//            return parseRSSDate(altRSS: true, region)
//        case "sql":
//            return parseSQLDate(region)
//        case "iso":
//            return parseISODate(region)
//        default:
//            return nil
//        }
//    }
//}
