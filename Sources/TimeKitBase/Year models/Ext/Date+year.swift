

//TODO:
public extension Date {
    
    
    //MARK: - Month

    func isMonth(_ month: Month) -> Bool {
        self.month == month.int
    }
    
    var monthSymbol: Month {
        Month(month)
    }
 
    
    //MARK: - WeekDay
    
    func isWeekDay(_ weekDay: WeekDay) -> Bool {
        self.weekday == weekDay.int
    }
    
    var weekDaySymbol: WeekDay {
        WeekDay(weekday)
    }
    
    var isWeekEnd: Bool {
        fatalError()
        //return
    }
}
