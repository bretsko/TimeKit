

import MinimalBase

// see also RelativeDateTimeFormatter.UnitsStyle
public enum TimeTranslStyle: String, StrEnumT {
    
    case long
    //    case long_time
    //    case long_convenient
    
    case short
    //    case short_time
    //    case short_convenient
    
    case narrow
    case quantify
    
    //    case tiny
}
