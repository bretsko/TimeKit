

import TimeKit
import Quick
import Nimble

class MonthSpec: QuickSpec {
    
    override func spec() {
        
        describe("Month") {
            
            it("can provide month name for any given locale") {
                
                expect(Month.may.string(LangLID.english).lowercased())
                    .to(equal("may"))
                
                expect(Month.january.string(LangLID.italian).lowercased()).to(equal("gennaio"))
                
                expect(Month.may.string(LangLID.french).lowercased())
                    .to(equal("mai"))
            }
            
            it("can provide number of days in any month") {
                
                //                expect(Month.february.numberOfDays(year: 2016))
                //                    .to(equal(29))
                //                
                //                expect(Month.january.numberOfDays(year: 2017))
                //                    .to(equal(31))
                //                
                //                expect(Month.february.numberOfDays(year: 1924))
                //                    .to(equal(29))
            }
            
            
            it("supports circular operations") {
                
                //                expect(Month.january.subtract(months: 2))
                //                    .to(equal(.november))
                //
                //                expect(Month.september.add(months: 5))
                //                    .to(equal(.february))
                //
                //                expect(Month.september.add(months: 0))
                //                    .to(equal(.september))
                //
                //                expect(Month.december.subtract(months: 0))
                //                    .to(equal(.december))
                //
                //                expect(Month.december.add(months: -1))
                //                    .to(equal(.november))
                //
                //                expect(Month.may.subtract(months: -1))
                //                    .to(equal(.june))
            }
        }
    }
}
