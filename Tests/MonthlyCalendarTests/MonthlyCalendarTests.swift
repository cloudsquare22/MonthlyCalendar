import XCTest
@testable import MonthlyCalendar

final class MonthlyCalendarTests: XCTestCase {
    func testCurrentAndNext() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let calendarCurrent = MonthlyCalendar(day: Date())
        print(calendarCurrent.year)
        print(calendarCurrent.month)
        print(calendarCurrent.days)
        print(calendarCurrent.dayCount)
        XCTAssertNotEqual(calendarCurrent.year, 0)
        XCTAssertNotEqual(calendarCurrent.month, 0)
        XCTAssertNotNil(calendarCurrent.days)

        let nextMonth = Calendar.current.date(byAdding: .month, value: 1, to: Date())
        let calendarNext = MonthlyCalendar(day: nextMonth!)
        print(calendarNext.year)
        print(calendarNext.month)
        print(calendarNext.days)
        print(calendarNext.dayCount)
        XCTAssertNotEqual(calendarNext.year, 0)
        XCTAssertNotEqual(calendarNext.month, 0)
        XCTAssertNotNil(calendarNext.days)
    }

    static var allTests = [
        ("testCurrentAndNext", testCurrentAndNext),
    ]
}
