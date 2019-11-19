

public extension DurationLongUnit  {
    var dunit: DurationUnit {
        .long(self)
    }
}

public extension DurationUnit {
    
    static var days: Self { make(.days) }
    static var weeks: Self { make(.weeks) }
    static var months: Self { make(.months) }
    static var quarters: Self { make(.quarters) }
    static var years: Self { make(.years) }
    
    fileprivate static func make(_ unit: DurationLongUnit) -> Self {
        unit.dunit
    }
}

