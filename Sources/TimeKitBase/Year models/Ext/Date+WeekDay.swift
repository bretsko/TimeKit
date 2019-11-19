

public extension Date {
    
    //TODO:
    
    func isWeekDay(_ weekDay: WeekDay) -> Bool {
        return self.weekday == weekDay.index
    }
    
    var weekDaySymbol: WeekDay {
        return WeekDay(weekday)
    }
    
    var isWeekEnd: Bool {
        fatalError()
        //return
    }
}
