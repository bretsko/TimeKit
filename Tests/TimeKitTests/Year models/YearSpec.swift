

import TimeKit
import Quick
import Nimble

class YearSpec: QuickSpec {
    
    override func spec() {
        
        describe("Year") {
            
            it("can check if it's a leap year") {
                
                expect(Year(2016).isLeap).to(beTrue())
                expect(Year(2020).isLeap).to(beTrue())
                expect(Year(2024).isLeap).to(beTrue())
                expect(Year(2028).isLeap).to(beTrue())
                expect(Year(2096).isLeap).to(beTrue())
                expect(Year(1924).isLeap).to(beTrue())
                expect(Year(2067).isLeap).to(equal(false))
            }
            
            it("can provide number of days in any year") {
                
                expect(Year(1924).numberOfDays)
                    .to(equal(366))
                
                expect(Year(1944).numberOfDays)
                    .to(equal(366))
                
                expect(Year(2067).numberOfDays)
                    .to(equal(365))
            }
        }
    }
}
