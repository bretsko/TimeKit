//
//
//@_exported //
//public typealias AnyPeriodTranslRuleSet = [ AnyPeriodTranslStyle: [AnyPeriodTranslation] ]
//
////TODO:  consider using RelativeDateTimeFormatter instead, or subclass if this one improves
//public class AnyPeriodFormatter {
//
//    // this dictionary stores cached transations dictionaries from LID
//    fileprivate var cachedTranslations = [ LID : AnyPeriodTranslRuleSet ]()
//
//    // cannot use simple singleton because caching allows modifying the existing cachedTranslations from multiple threads
//    static var shared: AnyPeriodFormatter {
//        return threadSingleton { AnyPeriodFormatter() }
//    }
//}
//
//public extension AnyPeriodFormatter {
//
//    //MARK: cachedTranslations
//
//    func getCachedTranslation(for lang: LID) -> AnyPeriodTranslRuleSet {
//
//        if let transl = cachedTranslations[lang] {
//            return transl
//        }
//        let transl = lang.translation
//        cachedTranslations[lang] = transl
//        return transl
//    }
//
//    func getCachedTranslation(for locale: LID) -> AnyPeriodTranslRuleSet {
//        return getCachedTranslation(for: locale.langID)
//    }
//}
//
//
