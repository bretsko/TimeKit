//
//
//
//
//public typealias MomentTranslRuleSet = [ MomentTranslStyle: [MomentTranslation] ]
//
////TODO:  consider using RelativeDateTimeFormatter instead, or subclass if this one improves
//public class MomentFormatter {
//    
//    // this dictionary stores cached transations dictionaries from LID
//    fileprivate var cachedTranslations = [ LID : MomentTranslRuleSet ]()
//    
//    // cannot use simple singleton because caching allows modifying the existing cachedTranslations from multiple threads
//    static var shared: MomentFormatter {
//        return threadSingleton { MomentFormatter() }
//    }
//}
//
//public extension MomentFormatter {
//        
//    //MARK: cachedTranslations
//    
//    func getCachedTranslation(for lang: LID) -> MomentTranslRuleSet {
//        
//        if let transl = cachedTranslations[lang] {
//            return transl
//        }
//        let transl = lang.translation
//        cachedTranslations[lang] = transl
//        return transl
//    }
//    
//    func getCachedTranslation(for locale: LID) -> MomentTranslRuleSet {
//        return getCachedTranslation(for: locale.langID)
//    }
//}
//
//
