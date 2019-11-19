//
//
//@_exported import MinimalBase
//
//public typealias AnyPeriodTranslRuleSet = [ AnyPeriodTranslStyle: [AnyPeriodTranslation] ]
//
////TODO:  consider using RelativeDateTimeFormatter instead, or subclass if this one improves
//public class AnyPeriodFormatter {
//
//    // this dictionary stores cached transations dictionaries from LocaleID
//    fileprivate var cachedTranslations = [ LocaleID : AnyPeriodTranslRuleSet ]()
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
//    func getCachedTranslation(for lang: LocaleID) -> AnyPeriodTranslRuleSet {
//
//        if let transl = cachedTranslations[lang] {
//            return transl
//        }
//        let transl = lang.translation
//        cachedTranslations[lang] = transl
//        return transl
//    }
//
//    func getCachedTranslation(for locale: Locale) -> AnyPeriodTranslRuleSet {
//        return getCachedTranslation(for: locale.langID)
//    }
//}
//
//
