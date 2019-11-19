//
//import TimeKit
//import Quick
//import Nimble
//import XCTest
//
//class TimeKit_Spec: QuickSpec {
//    
//    override func spec() {
//        
//        describe("TimeKit") {
//            
//            it("can format ISO, using defaultRegion") {
//                
//                for dateData in dateDataList() {
//                    
//                    let dateStr = dateData.key
//                    let expected = dateData.value["iso"]!
//                    
//                    //TODO: try vary the region
//                    let region = DateRegion(CalendarID.gregorian, TimeZoneID.europeRome, LocaleID.english)
//                    DateRegion.defaultRegion = region
//                    
//                    guard let srcDate = dateStr.parseDate(format: "yyyy-MM-dd'T'HH:mm:ssZZZZZ", region) else {
//                        fail("Failed to correctly parse date: '\(dateStr)'")
//                        return
//                    }
//                    
//                    let dateAsStr = srcDate.formatWithISOFormat()!
//                    expect(dateAsStr).to(equal(expected), description:
//                        "Failed to convert date '\(srcDate)' to \("iso") format. Expected '\(expected)', got '\(dateAsStr)'")
//                    
//                    
//                    guard let decodedSrcDate = dateAsStr.parseDate(format: "yyyy-MM-dd'T'HH:mm:ssZZZZZ", region) else {
//                        fail("Failed to convert date string to date of format \("iso"): \(dateAsStr)")
//                        return
//                    }
//                    expect(srcDate).to(equal(decodedSrcDate))
//                }
//            }
//        
//            
//            it("can parse RSS Alt Locale, with any defaultRegion") {
//                
//                let str1 = "Tue, 20 Jun 2017 14:49:19 +0200"
//                let date1 = str1.parseRSSDate(altRSS: false)
//                
//                let str2 = "20 Jun 2017 14:49:19 +0200"
//                let date2 = str2.parseRSSDate(altRSS: true)
//                
//                expect(date1).toNot(beNil())
//                expect(date2).toNot(beNil())
//            }
//            
//            it("can format as clock") {
//                
//                let str1 = (2.hours + 5.minutes).timeInterval.formatAsClock()
//                
//                expect(str1).to(equal("02:05:00"))
//                
//                #if os(Linux)
//                let zeroBehavior = DateComponentsFormatter.ZeroFormattingBehavior(rawValue: 14)
//                let str2 = (4.minutes + 50.minutes).timeInterval.formatAsClock(zero: zeroBehavior)
//                
//                expect(str2).to(equal("54:00"))
//                
//                #else
//                let str2 = (4.minutes + 50.minutes).timeInterval.formatAsClock(.dropAll)
//                expect(str2).to(equal("54"))
//                
//                #endif
//            }
//            
//            it("can extract components from TimeInterval") {
//                
//                // for TimeInterval
//                let values = (36.hours + 2.days + 1.weeks).timeInterval.diff([.day, .hour])
//                
//                // 11 ??
//                //expect(values[.hour]).to(equal(12))
//                expect(values[.day]).to(equal(10))
//                
//                let minutes = 1.days.timeInterval.diff(.minute)
//                expect(minutes).to(equal(1440))
//            }
//            
//            it("can format TimeInterval") {
//                
//                var options1 = DateFormattingOptions()
//                options1.unitsStyle = .full
//                options1.collapsesLargestUnit = false
//                options1.allowsFractionalUnits = true
//                options1.locale = LocaleID.english.locale
//                
//                let value1 = (2.hours + 5.minutes + 32.seconds).timeInterval.format(options1)
//                
//                var options2 = DateFormattingOptions()
//                options2.unitsStyle = .abbreviated
//                options2.locale = LocaleID.english.locale
//                
//                let value2 = (5.hours + 2.days).timeInterval.format(options2)
//                
//                expect(value1).to(equal("2 hours, 5 minutes, 32 seconds"))
//                expect(value2).to(equal("2d 5h"))
//            }
//            
//           // all below should be removed - because Foundation has ISO8601DateFormatter
//                        
//            //            it("can parse ISO formatted Date") {
//            //                //FIXME: failing
//            //
//            //                let str1 = "2017-08-05T16:04:03"
//            //                let date1 = str1.parseISODate(.iso)!
//            //
//            //                DateRegion.defaultRegion = DateRegion.iso
//            //                let secs = date1.region.timeZone.secondsFromGMT()
//            //                expect(secs).to(equal(0))
//            //
//            //                //TODO:
//            //                //let str2 = "2017-08-05T16:04:03+02:00"
//            //                //let date2 = str2.parseISODate()!
//            //                //                DateRegion.defaultRegion = ...
//            //                //                let secs1 = date2.region.timeZone.secondsFromGMT()
//            //                //                expect(secs1).to(equal(7200))
//            //            }
//            
//            
////            it("can parse ISO dates") {
////
////                DateRegion.defaultRegion = DateRegion.iso
////
////                expect("20060506"
////                    .parseISODate()?.isoString())
////                    .to(equal("2006-05-06T00:00:00Z")) // YYYYMMDD
////
////                expect("2001-12-14"
////                    .parseISODate()?.isoString())
////                    .to(equal("2001-12-14T00:00:00Z")) // YYYY-MM-DD
////
////                expect("2001-06"
////                    .parseISODate()?.isoString())
////                    .to(equal("2001-06-01T00:00:00Z"))  // YYYY-MM
////
////                expect("2015"
////                    .parseISODate()?.isoString())
////                    .to(equal("2015-01-01T00:00:00Z"))  // YYYY
////
////                expect("15"
////                    .parseISODate()?.isoString())
////                    .to(equal("15\(currentYearShort)-01-01T00:00:00Z")) // YY
////
////
////                // Implied century: YY is 00-99
////                expect("150603"
////                    .parseISODate()?.isoString())
////                    .to(equal("2015-06-03T00:00:00Z")) // YYMMDD
////
////                expect("161201"
////                    .parseISODate()?.isoString())
////                    .to(equal("2016-12-01T00:00:00Z"))  // YY-MM-DD
////
////                // Implied year
////                expect("--1215"
////                    .parseISODate()?.isoString())
////                    .to(equal("\(currentYear)-12-15T00:00:00Z")) // --MMDD
////
////                expect("--12-15"
////                    .parseISODate()?.isoString())
////                    .to(equal("\(currentYear)-12-15T00:00:00Z")) // --MM-DD
////
////                expect("--12"
////                    .parseISODate()?.isoString())
////                    .to(equal("\(currentYear)-12-01T00:00:00Z")) // --MM
////
////                //Implied year and month
////                expect("---15"
////                    .parseISODate()?.isoString())
////                    .to(equal("\(currentYear)-\(String(format: "%02d", currentMonth))-15T00:00:00Z")) // ---DD
////
////
////                // Ordinal dates: DDD is the number of the day in the year (1-366)
////                // YYYYDDD (DDD is the number of the day of the year)
////                expect("2015010"
////                    .parseISODate()?.isoString())
////                    .to(equal("2015-01-10T00:00:00Z"))
////
////                expect("2015032"
////                    .parseISODate()?.isoString())
////                    .to(equal("2015-02-01T00:00:00Z")) // YYYY-DDD
////
////                expect("15-032"
////                    .parseISODate()?.isoString())
////                    .to(equal("2015-02-01T00:00:00Z")) // YY-DDD
////
////                expect("15032"
////                    .parseISODate()?.isoString())
////                    .to(equal("2015-02-01T00:00:00Z"))  // YYDDD
////
////                expect("-032"
////                    .parseISODate()?.isoString())
////                    .to(equal("\(currentYear)-02-01T00:00:00Z")) // -DDD
////
////
////                //Date
////                expect("1970-01-01"
////                    .parseISODate()?.isoString())
////                    .to(equal("1970-01-01T00:00:00Z"))
////
////                expect("2001"
////                    .parseISODate()?.isoString())
////                    .to(equal("2001-01-01T00:00:00Z"))
////
////                expect("2001-02-03"
////                    .parseISODate()?.isoString())
////                    .to(equal("2001-02-03T00:00:00Z"))
////
////                expect("2001-02-03T04:05"
////                    .parseISODate()?.isoString())
////                    .to(equal("2001-02-03T04:05:00Z"))
////
////                //FIXME: failed - expected to equal <2001-02-03T04:05:06-06:30>, got <2001-02-03T10:35:06Z>
////
////                //expect("2001-02-03T04:05:06.007-06:30"
////                //.parseISODate()?.isoString())
////                //.to(equal("2001-02-03T04:05:06-06:30"))
////            }
//            
//            //it("can parse ISO dates with weeks") {
//                //Week-based dates: ww is the number of the week, and d is the number (1-7) of the day in the week
//                
//                //FIXME: failed - expected to equal <2018-01-02T00:00:00Z>, got <2018-01-01T01:00:00Z>
////                expect("2018W012"
////                    .parseISODate()?.isoString())
////                    .to(equal("2018-01-02T00:00:00Z")) // yyyyWwwd
////
////                expect("2018-W01-2"
////                    .parseISODate()?.isoString())
////                    .to(equal("2018-01-02T00:00:00Z")) // yyyy-Www-d
////
////                expect("2018-W01"
////                    .parseISODate()?.isoString())
////                    .to(equal("2017-12-31T00:00:00Z")) // yyyyWww
////
////                expect("2018-W01"
////                    .parseISODate()?.isoString())
////                    .to(equal("2017-12-31T00:00:00Z")) // yyyy-Www
////
////                expect("18-W01"
////                    .parseISODate()?.isoString())
////                    .to(equal("2017-12-31T00:00:00Z")) // yyWwwd
////
////                expect("18-W01-2"
////                    .parseISODate()?.isoString())
////                    .to(equal("2018-01-02T00:00:00Z")) // yy-Www-d
////
////                expect("18W01"
////                    .parseISODate()?.isoString())
////                    .to(equal("2017-12-31T00:00:00Z")) // yyWww
////
////                expect("18-W01"
////                    .parseISODate()?.isoString())
////                    .to(equal("2017-12-31T00:00:00Z")) // yy-Www
////            }
//        }
//    }
//}
