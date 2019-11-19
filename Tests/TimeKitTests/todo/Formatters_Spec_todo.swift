
//import TimeKit
//import XCTest
//
//extension TimeKit_Spec {
    
    //it("testFormatterCustom") {
     //expect(result).to(equal(...))
    //        let rome = DateRegion.rome
    //        let date = Date(year: 2015, month: 1, day: 15, hour: 20, minute: 00, second: 5, nanosecond: 0, rome)
    //        let fixedFormat = date.format("MMM dd yyyy", LocaleID.english)
    //        let regionFormat = date.format("MMM dd yyyy")
    //        expect( fixedFormat == "Jan 15 2015", "Failed to format with fixed locale")
    //        expect( regionFormat == "gen 15 2015", "Failed to format with standard locale")
    //    }
    
    
    //it("testColloquialFormatter") {
    //expect(result).to(equal(...))
    //        let ago5Mins = Date() - 5.minutes
    //        let r1 = ago5Mins.relString(RelFormatter.defaultStyle, LocaleID.italian)
    //        let r2 = ago5Mins.relString(RelFormatter.twitterStyle, LocaleID.italian)
    //        expect(r1 == "5 minuti fa", "Failed to use colloquial formatter")
    //        expect(r2 == "5 min fa", "Failed to use colloquial formatter")
    //
    //        let justNow = Date() - 10.seconds
    //        let r3 = justNow.relString(RelFormatter.defaultStyle, LocaleID.italian)
    //        expect(r3 == "ora", "Failed to use colloquial formatter")
    //
    //        let justNow2 = Date() - 2.hours
    //        let r4 = justNow2.relString(RelFormatter.twitterStyle, LocaleID.italian)
    //        expect(r4 == "2h fa", "Failed to use colloquial formatter")
    //
    //        let justNow3 = Date() - 1.minutes
    //        let r5 = justNow3.relString(RelFormatter.twitterStyle, LocaleID.english)
    //        expect(r5 == "1 min. ago", "Failed to use colloquial formatter")
    //
    //        let justNow4 = Date() - 51.seconds
    //        let r6 = justNow4.relString(RelFormatter.twitterStyle, LocaleID.english)
    //        expect(r6 == "1 min. ago", "Failed to use colloquial formatter")
    //    }
    
    
    //it("testGenerateSomeRandomDates") {
    //expect(result).to(equal(...))
//     var total = ""
//     let upperBound = Date()
//     let lowerBound = (upperBound - 3.years)
//     let randomDates = Date.randomDates(count: 40, between: lowerBound, and: upperBound)
//     randomDates.forEach {
//     let adjustedDateNoMS = $0.isoString().parseISODate()!
//     total += "\"\($0.isoString())\" : [\n\t"
//     total += "\n\t" + "\"dotnet\": \"\(adjustedDateNoMS.dotNETString())\","
//     total += "\n\t" + "\"rss\": \"\(adjustedDateNoMS.rssString(alt: false))\","
//     total += "\n\t" + "\"rss_alt\": \"\(adjustedDateNoMS.rssString(alt: true))\","
//     total += "\n\t" + "\"sql\": \"\(adjustedDateNoMS.sqlString())\","
//     total += "\n\t" + "\"iso\": \"\(adjustedDateNoMS.isoString())\""
//     total += "\n],\n"
//     }
//     print("\(total)")
//     }
    

//it("testDotNETFormatter") {
//expect(result).to(equal(...))
    //        DateRegion.defaultRegion = DateRegion(CalendarID.gregorian, TimeZoneID.europeRome, LocaleID.english)
    //
    //        datesList().forEach {
    //            XCTTestFormatterParser(dateStr: $0.key, expected: $0.value["dotnet"]!, type: "dotnet", DateRegion.defaultRegion)
    //        }
    //    }
    
    //it("testRSSFormatter") {
    //expect(result).to(equal(...))
    //        DateRegion.defaultRegion = DateRegion.romeEnglish
    //
    //        datesList().forEach {
    //            XCTTestFormatterParser(dateStr: $0.key, expected: $0.value["rss"]!, type: "rss", DateRegion.defaultRegion)
    //        }
    //    }
    
    //it("testRSSAltFormatter") {
    //expect(result).to(equal(...))
    //        DateRegion.defaultRegion = DateRegion.romeEnglish
    //
    //        datesList().forEach {
    //            XCTTestFormatterParser(dateStr: $0.key, expected: $0.value["rss_alt"]!, type: "rss_alt", DateRegion.defaultRegion)
    //        }
    //    }
    
    //it("testSQLFormatter") {
    //expect(result).to(equal(...))
    //        DateRegion.defaultRegion = DateRegion.romeEnglish
    //
    //        datesList().forEach {
    //            XCTTestFormatterParser(dateStr: $0.key, expected: $0.value["sql"]!, type: "sql", DateRegion.defaultRegion)
    //        }
    //    }
//}
