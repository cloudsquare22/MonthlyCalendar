import Foundation

public struct MonthlyCalendar {
    public var year = 0
    public var month = 0
    public var dayCount = 0
    public var days = [[Int]](repeating: [Int](repeating: 0, count: 7), count: 1)
    public let startSunday: Bool
    
    public init(day: Date, startSunday: Bool = false) {
        let dayDateComponents = Calendar.current.dateComponents(in: .current, from: day)
        self.year = dayDateComponents.year!
        self.month = dayDateComponents.month!
        self.startSunday = startSunday
        var firstDateComponents = dayDateComponents
        firstDateComponents.day = 1
        firstDateComponents = Calendar.current.dateComponents(in: .current, from: Calendar.current.date(from: firstDateComponents)!)
        var countDateComponents = DateComponents()
        countDateComponents.year = firstDateComponents.year
        countDateComponents.month = firstDateComponents.month! + 1
        countDateComponents.day = 0
        self.dayCount = Calendar.current.component(.day, from: Calendar.current.date(from: countDateComponents)!)
        let weekday = firstDateComponents.weekday!
        var weekdayIndex = weekday - 1
        if startSunday == false {
            weekdayIndex = weekday - 1 == 0 ? 6 : weekday - 2
        }
        var weekIndex = 0
        for day in 1...self.dayCount {
            days[weekIndex][weekdayIndex] = day
            if weekdayIndex + 1 > 6 {
                weekdayIndex = 0
                weekIndex = weekIndex + 1
                days.append([Int](repeating: 0, count: 7))
            }
            else {
                weekdayIndex = weekdayIndex + 1
            }
        }
    }
}
