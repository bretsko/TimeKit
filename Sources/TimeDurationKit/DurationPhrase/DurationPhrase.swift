

public struct DurationPhrase: HasStrAndDescrP, Hashable { //HasAllFormsT,
    
    //TODO: use TimeDuration ?
    
    public var value: Double
    
    public var unit: DurationUnit
    
    public var format: DurationPhraseFormat
}

public extension DurationPhrase {
    
    init(_ value: Double,
         _ unit: DurationUnit,
         _ format: DurationPhraseFormat) {
        self.value = value
        self.unit = unit
        self.format = format
    }
    
    var str: Str {
        fatalError()
    }
}

