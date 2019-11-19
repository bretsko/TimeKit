
import Foundation


public struct Year: Equatable, CustomStringConvertible {
    
    let year: Int
    
    // negative meaning BC ??
    /// - Parameter year: year value. Can be negative.
    public init(_ year: Int) {
        self.year = year
    }
}
public extension Year {
    
    var isLeap: Bool {
        return year & 3 == 0 &&
            year % 100 != 0 ||
            year % 400 == 0
    }
    
    var numberOfDays: Int {
        return isLeap ? 366 : 365
    }
    
    /// for 2019 returns 19
    var last2nums: Int? {
        if year > 2000 && 2000 < 3000 {
            return year - 2000
        }
        //TODO: if 4 - remove first 2, else ...
        return nil
    }
    
    var description: String {
        return "\(year)"
    }
}
