
import Foundation


public enum DateParsingMode {
    
    case standard(DateFormat)
    
    /// custom string format
    case custom(format: String, lenient: Bool)
    
    var dateFormat: DateFormat? {
        switch self {
        case .standard(let format):
            return format
        default:
            return nil
        }
    }
}
