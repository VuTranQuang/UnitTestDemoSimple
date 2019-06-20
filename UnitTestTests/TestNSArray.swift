//
//  TestNSArray.swift
//  UnitTestTests
//
//  Created by RTC-HN154 on 6/13/19.
//  Copyright © 2019 RTC-HN154. All rights reserved.
//

import XCTest
@testable import UnitTest
class TestNSArray: XCTestCase {
   
    
    func testArray_nil() {
        let arrayA: NSArray?
        let arrayB = ["", ""]
        let isMatch = (arrayB as NSArray).isMatch(withArray: nil)
        XCTAssertFalse(isMatch)
    }
    
    func testArray_Null() {
        let expectResult = false
        let arrayA = [""]
        let actualResult =  (arrayA as NSArray).isMatch(withArray: ["3", "2", "1"])
        XCTAssertEqual(actualResult, expectResult)
    }
    func testArray_Equal() {
        let expectResult = true
        let arrayA = ["1", "2", "3"]
        let actualResult =  (arrayA as NSArray).isMatch(withArray: ["3", "2", "1"])
        XCTAssertEqual(actualResult, expectResult)
    }
    
   
    override func setUp() {
        super.setUp()
        
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    
   

    override func tearDown() {
        super.tearDown()
        // Put teardown code here. This method is called after the invocation of each test method in the class.
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
