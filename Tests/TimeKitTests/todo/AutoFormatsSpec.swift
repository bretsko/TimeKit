//
//
//@testable import TimeKit
//import Quick
//import Nimble
//
//
//class AutoFormatsSpec: QuickSpec {
//    
//    override func spec() {
//        
//        let testFormats: [DateFormat] = [.altRSS,
//                                         .extended,
//                                         .httpHeader]
//        
//        describe("AutoFormats") {
//            
//            it("has formats") {
//                expect(DateRegion.autoFormats.hasSth).to(beTrue())
//            }
//            
//            it("can be reset") {
//                DateRegion.autoFormats = testFormats.map{$0.dateFormatString!.str}
//                DateFormat.resetAutoFormats()
//                expect(DateRegion.autoFormats)
//                    .to(equal(DateRegion.autoFormats))
//            }
//            
//            //??
////            it("can set other formats") {
////                DateFormat.resetAutoFormats()
////                let formatStrings = testFormats
////
////                DateFormat.autoFormats = formatStrings
////                expect(DateRegion.autoFormats)
////                    .to(equal(formatStrings))
////            }
//        }
//    }
//}
