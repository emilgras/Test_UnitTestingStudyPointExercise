//
//  ReimbursementTestCase.swift
//  UnitTestingStudyPointExercise
//
//  Created by Emil Gräs on 28/02/2017.
//  Copyright © 2017 Emil Gräs. All rights reserved.
//

import XCTest
@testable import UnitTestingStudyPointExercise

class ReimbursementTestCase: XCTestCase {
    
    let vc = ViewController2()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testNonLeapYearDivisibleBy100NotDivisibleBy400() {
        XCTAssertEqual(vc.getReimbursement(deductableIsMet: true, visit: 1), 50, "")
        XCTAssertEqual(vc.getReimbursement(deductableIsMet: true, visit: 2), 80, "")
        XCTAssertEqual(vc.getReimbursement(deductableIsMet: false, visit: 1), -1, "")
        XCTAssertEqual(vc.getReimbursement(deductableIsMet: false, visit: 2), -1, "")
    }
    
}
