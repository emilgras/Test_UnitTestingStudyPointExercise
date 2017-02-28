//
//  UnitTestingStudyPointExerciseTests.swift
//  UnitTestingStudyPointExerciseTests
//
//  Created by Emil Gräs on 28/02/2017.
//  Copyright © 2017 Emil Gräs. All rights reserved.
//

import XCTest
@testable import UnitTestingStudyPointExercise

class UnitTestingStudyPointExerciseTests: XCTestCase {
    
    let vc = ViewController()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // Equivalent tests - Valid Months
    
    func testMonthsWith31Days() {
        XCTAssertEqual(vc.getNumDaysInMonth(month: 1, year: 2017), 31, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 3, year: 2017), 31, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 5, year: 2017), 31, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 7, year: 2017), 31, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 9, year: 2017), 31, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 11, year: 2017), 31, "")
    }
    
    func testMonthsWith30Days() {
        XCTAssertEqual(vc.getNumDaysInMonth(month: 4, year: 2017), 30, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 6, year: 2017), 30, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 8, year: 2017), 30, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 10, year: 2017), 30, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 12, year: 2017), 30, "")
    }
    
    func testMonthsWith29Days() {
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 0), 29, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 1908), 29, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 2000), 29, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 2008), 29, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 2016), 29, "")
    }
    
    func testMonthsWith28Days() {
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 1900), 28, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 1917), 28, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 1945), 28, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 1999), 28, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 2017), 28, "")
    }
    
    // Equivalent tests - Invalid Months
    
    func testInvalidMonthsBelowMin() {
        XCTAssertEqual(vc.getNumDaysInMonth(month: -10, year: 1900), -1, "")
    }
    
    func testInvalidMonthsAboveMax() {
        XCTAssertEqual(vc.getNumDaysInMonth(month: Int.max, year: 1900), -1, "")
    }

    // Equivalent tests - Valid Years
    
    func testLeapYears() {
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 0), 29, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 800), 29, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 2000), 29, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 2004), 29, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 2016), 29, "")
    }
    
    func testNonLeapYears() {
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 100), 28, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 1000), 28, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 1546), 28, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 1555), 28, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 1867), 28, "")
    }
    
    // Equivalent tests - Month + Year
    
    func testMonthsWith31DaysNonLeapYear() {
        XCTAssertEqual(vc.getNumDaysInMonth(month: 1, year: 100), 31, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 5, year: 1546), 31, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 11, year: 1867), 31, "")
    }
    
    func testMonthsWith31DaysLeapYear() {
        XCTAssertEqual(vc.getNumDaysInMonth(month: 1, year: 800), 31, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 5, year: 2000), 31, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 11, year: 2004), 31, "")
    }
    
    func testMonthsWith30DaysNonLeapYear() {
        XCTAssertEqual(vc.getNumDaysInMonth(month: 4, year: 100), 30, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 8, year: 1546), 30, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 12, year: 1867), 30, "")
    }
    
    func testMonthsWith30DaysLeapYear() {
        XCTAssertEqual(vc.getNumDaysInMonth(month: 4, year: 800), 30, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 8, year: 2000), 30, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 12, year: 2004), 30, "")
    }
    
    func testFebruaryNonLeapYear() {
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 100), 28, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 1546), 28, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 1867), 28, "")
    }
    
    func testFebruaryLeapYear() {
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 800), 29, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 2000), 29, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 2004), 29, "")
    }
    
    // Boundary values tests - Month + Year
    
    func testLeapDivisibleBye400() {
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 799), 28, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 800), 29, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 801), 28, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 1599), 28, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 1600), 29, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 1601), 28, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 1999), 28, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 2000), 29, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 2001), 28, "")
    }
    
    func testNonLeapYearDivisibleBy100NotDivisibleBy400() {
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 1899), 28, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 1900), 28, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 2, year: 1901), 28, "")
    }
    
    func testNonPositiveInvalidMonths() {
        XCTAssertEqual(vc.getNumDaysInMonth(month: -1, year: 800), -1, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: -2, year: 2000), -1, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: -100, year: 2004), -1, "")
    }
    
    func testPositiveInavlidMonths() {
        XCTAssertEqual(vc.getNumDaysInMonth(month: 13, year: 800), -1, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 14, year: 2000), -1, "")
        XCTAssertEqual(vc.getNumDaysInMonth(month: 100, year: 2004), -1, "")
    }
    
}


























