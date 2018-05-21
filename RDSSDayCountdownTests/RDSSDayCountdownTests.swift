//
//  RDSSDayCountdownTests.swift
//  RDSSDayCountdownTests
//
//  Created by Finn on 2018/5/21.
//  Copyright © 2018年 Marcus Wu. All rights reserved.
//

import XCTest

class RDSSDayCountdownTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_calculationDaysApart() {
        let firstDateComponents = NSDateComponents()
        firstDateComponents.year = 2018
        firstDateComponents.month = 5
        firstDateComponents.day = 21
        firstDateComponents.hour = 1
        firstDateComponents.minute = 30
        firstDateComponents.second = 0

        
        let secondDateComponents = NSDateComponents()
        secondDateComponents.year = 2018
        secondDateComponents.month = 5
        secondDateComponents.day = 25
        secondDateComponents.hour = 2
        secondDateComponents.minute = 35
        secondDateComponents.second = 12
        
        let userCalendar = Calendar.current
        let firstDate = userCalendar.date(from: firstDateComponents as DateComponents)
        let secondDate = userCalendar.date(from: secondDateComponents as DateComponents)
        
        let dayApart = DaysApart(fromDate: firstDate!, toDate: secondDate!)
        XCTAssertEqual(dayApart.day, "4")
        XCTAssertEqual(dayApart.hour, "1")
        XCTAssertEqual(dayApart.minute, "5")
        XCTAssertEqual(dayApart.second, "12")
    }

}
