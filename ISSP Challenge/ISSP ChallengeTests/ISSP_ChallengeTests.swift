//
//  ISSP_ChallengeTests.swift
//  ISSP ChallengeTests
//
//  Created by MCS Devices on 12/7/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import XCTest
@testable import ISSP_Challenge

class ISSP_ChallengeTests: XCTestCase {
    func testParser(){
        let myData = stubs.jsonResponseStub.data(using: .utf8)!
        let jsonData = try! JSONSerialization.jsonObject(with: myData, options: .allowFragments) as! [String: Any]
        let passes = Pass.parseJson(jsonData: jsonData)
        XCTAssertTrue(Int(passes.first!.duration)! == 599, "Thats not the duration")
    }
    func testRiseTimeDate(){
        let riseTime = stubs.riseTimeStub
        let stringDate = TableViewCell.getDateFormattedString(riseTime)
        XCTAssertTrue(stringDate == "2017-Dec-07 18:28 hrs", "Thats not the date")
    }
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
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
