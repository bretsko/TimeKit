


public enum DurationPhraseFormat: HasStrAndDescrP, Hashable { //HasAllFormsT
    
    ///3.5 hours is 3.5 hours
    case shortest
    
    /// 3.5 hours is 3 hours and 30 minutes
    case normal
    
    
    /// 3.5 hours is conveted to given units
    case with(unit: DurationUnit)
}

public extension DurationPhraseFormat {
    
    var str: Str {
        fatalError()
    }
}
