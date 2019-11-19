

import TimeKit
import Quick
import Nimble

class WeekdaySpec: QuickSpec {
    
    override func spec() {
        
        describe("Weekday") {
            it("supports circular operations") {
                
                expect(WeekDay.monday.subtracting(days: 2))
                    .to(equal(WeekDay.saturday))
                
//                expect(WeekDay.friday.add(days: 4))
//                    .to(equal(WeekDay.tuesday))
//                
//                expect(WeekDay.monday.add(days: 0))
//                    .to(equal(WeekDay.monday))
//                
//                expect(WeekDay.friday.subtract(days: 0))
//                    .to(equal(WeekDay.friday))
//                
//                expect(WeekDay.friday.add(days: -1))
//                    .to(equal(WeekDay.thursday))
//                
//                expect(WeekDayWeekDay.friday.subtract(days: -1))
//                    .to(equal(.saturday))
            }
            it("can provide weekday name for any given locale") {
                
                //                expect(WeekDay.monday.name(locale: LocaleID.italian).lowercased())
                //                    .to(equal("lunedì"))
                //                
                //                expect(WeekDay.sunday.name(locale: LocaleID.english).lowercased())
                //                    .to(equal("sunday"))
                //                
                //                expect(WeekDay.monday.name(locale: LocaleID.ukrainian).lowercased()).to(equal("понеділок"))
            }
        }
        describe("WeekdayName") {
            //TODO:
        }
    }
}
