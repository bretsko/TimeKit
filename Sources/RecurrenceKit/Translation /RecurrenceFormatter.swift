//
//
//
//
//public typealias RecurrenceTranslRuleSet = [ RecurrenceTranslStyle: [RecurrenceTranslation] ]
//
////TODO:  consider using RelativeDateTimeFormatter instead, or subclass if this one improves
//public class RecurrenceFormatter {
//    
//    // this dictionary stores cached transations dictionaries from LID
//    fileprivate var cachedTranslations = [ LID : RecurrenceTranslRuleSet ]()
//    
//    // cannot use simple singleton because caching allows modifying the existing cachedTranslations from multiple threads
//    static var shared: RecurrenceFormatter {
//        return threadSingleton { RecurrenceFormatter() }
//    }
//}
//
//public extension RecurrenceFormatter {
//        
//    //MARK: cachedTranslations
//    
//    func getCachedTranslation(for lang: LID) -> RecurrenceTranslRuleSet {
//        
//        if let transl = cachedTranslations[lang] {
//            return transl
//        }
//        let transl = lang.translation
//        cachedTranslations[lang] = transl
//        return transl
//    }
//    
//    func getCachedTranslation(for locale: LID) -> RecurrenceTranslRuleSet {
//        return getCachedTranslation(for: locale.langID)
//    }
//}
//
//
