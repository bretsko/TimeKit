


public struct Year: Equatable, HasDescrP {
    
    let year: Int
}
public extension Year {
    
    // negative meaning BC ??
    /// - Parameter year: year value. Can be negative.
    init(_ year: Int) {
        self.year = year
    }
    
    var isLeap: Bool {
        year & 3 == 0 && year % 100 != 0 || year % 400 == 0
    }
    
    var numberOfDays: Int {
        isLeap ? 366 : 365
    }
    
    /// for 2019 returns 19
    var last2nums: Int? {
        if year > 2000 && 2000 < 3000 {
            return year - 2000
        }
        //TODO: if 4 - remove first 2, else ...
        return nil
    }
    
    var descr: Str {
        "\(year)"
    }
}
