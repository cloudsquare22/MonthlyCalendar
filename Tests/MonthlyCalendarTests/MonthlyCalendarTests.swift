import XCTest
@testable import MonthlyCalendar

final class MonthlyCalendarTests: XCTestCase {
    func testCurrentAndNext() {
        let calendarCurrent = MonthlyCalendar(day: Date())
        print(calendarCurrent.year)
        print(calendarCurrent.month)
        print(calendarCurrent.days)
        print(calendarCurrent.dayCount)
        print(calendarCurrent.startSunday)
        XCTAssertNotEqual(calendarCurrent.year, 0)
        XCTAssertNotEqual(calendarCurrent.month, 0)
        XCTAssertNotNil(calendarCurrent.days)

        let nextMonth = Calendar.current.date(byAdding: .month, value: 1, to: Date())
        let calendarNext = MonthlyCalendar(day: nextMonth!)
        print(calendarNext.year)
        print(calendarNext.month)
        print(calendarNext.days)
        print(calendarNext.dayCount)
        print(calendarNext.startSunday)
        XCTAssertNotEqual(calendarNext.year, 0)
        XCTAssertNotEqual(calendarNext.month, 0)
        XCTAssertNotNil(calendarNext.days)
    }
    
    func testCurrentAndNextSunday() {
        let calendarCurrent = MonthlyCalendar(day: Date(), startSunday: true)
        print(calendarCurrent.year)
        print(calendarCurrent.month)
        print(calendarCurrent.days)
        print(calendarCurrent.dayCount)
        print(calendarCurrent.startSunday)
        XCTAssertNotEqual(calendarCurrent.year, 0)
        XCTAssertNotEqual(calendarCurrent.month, 0)
        XCTAssertNotNil(calendarCurrent.days)

        let nextMonth = Calendar.current.date(byAdding: .month, value: 1, to: Date())
        let calendarNext = MonthlyCalendar(day: nextMonth!, startSunday: true)
        print(calendarNext.year)
        print(calendarNext.month)
        print(calendarNext.days)
        print(calendarNext.dayCount)
        print(calendarNext.startSunday)
        XCTAssertNotEqual(calendarNext.year, 0)
        XCTAssertNotEqual(calendarNext.month, 0)
        XCTAssertNotNil(calendarNext.days)
    }

    func testCurrentAndNextInit2() {
        let calendarCurrent = MonthlyCalendar(year: 2020, month: 8)
        print(calendarCurrent.year)
        print(calendarCurrent.month)
        print(calendarCurrent.days)
        print(calendarCurrent.dayCount)
        print(calendarCurrent.startSunday)
        XCTAssertNotEqual(calendarCurrent.year, 0)
        XCTAssertNotEqual(calendarCurrent.month, 0)
        XCTAssertNotNil(calendarCurrent.days)

        let calendarNext = MonthlyCalendar(year: 2020, month: 9)
        print(calendarNext.year)
        print(calendarNext.month)
        print(calendarNext.days)
        print(calendarNext.dayCount)
        print(calendarNext.startSunday)
        XCTAssertNotEqual(calendarNext.year, 0)
        XCTAssertNotEqual(calendarNext.month, 0)
        XCTAssertNotNil(calendarNext.days)
    }

    static var allTests = [
        ("testCurrentAndNext", testCurrentAndNext),
        ("testCurrentAndNextSunday", testCurrentAndNextSunday),
        ("testCurrentAndNextInit2", testCurrentAndNextInit2),
    ]
}
