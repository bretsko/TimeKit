

public extension DurationShortUnit {
    var dunit: DurationUnit {
        .short(self)
    }
}
public extension DurationUnit {

    static var hours: Self { make(.hours) }
    static var minutes: Self { make(.minutes) }
    static var seconds: Self { make(.seconds) }
    static var milliseconds: Self { make(.milliseconds) }
    static var microseconds: Self { make(.microseconds) }
    static var nanoseconds: Self { make(.nanoseconds) }
    static var picoseconds: Self { make(.picoseconds) }
    
    fileprivate static func make(_ unit: DurationShortUnit) -> Self {
        unit.dunit
    }
}

