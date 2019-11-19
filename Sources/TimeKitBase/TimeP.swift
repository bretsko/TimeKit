

import MinimalBase


public protocol TimeP: HasTimeClassP {
        
    func translate(into lang: LocaleID) -> [String]?
    
    /// tries to interpret a given string in specified language
    init?(_ timeString: String, _ lang: LocaleID)
}
    
