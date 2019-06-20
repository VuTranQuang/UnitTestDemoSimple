//
//  UnitTestTests.swift
//  UnitTestTests
//
//  Created by RTC-HN154 on 6/12/19.
//  Copyright © 2019 RTC-HN154. All rights reserved.
//

import XCTest

@testable import UnitTest

class UnitTestTests: XCTestCase {
    var ferrari: Car!
    var lambogini: Car!
    var ford: Car!
    override func setUp() {
        super.setUp()
        ferrari = Car(type: .Sport, transmissionMode: .Drive)
        lambogini = Car(type: .OffRoad, transmissionMode: .Drive)
        ford = Car(type: .Economy, transmissionMode: .Drive)
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        super.tearDown()
        ferrari = nil
        lambogini = nil
        ford = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testCar() {
        let minute = 60
        ferrari.start(minutes: minute)
        lambogini.start(minutes: minute)
        ford.start(minutes: minute)
        
        XCTAssertTrue(ferrari.miles > lambogini.miles && ford.miles < lambogini.miles)
    }
    
    func testEconomy() {
        let minute = 60
        let expectResult = 30
        ford.start(minutes: minute)
        XCTAssertEqual(expectResult, ford.miles)
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
