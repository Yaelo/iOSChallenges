//
//  AlaskaAirlinesCSATests.swift
//  AlaskaAirlinesCSATests
//
//  Created by MCS Devices on 11/17/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import XCTest
@testable import AlaskaAirlinesCSA

class AlaskaAirlinesCSATests: XCTestCase {
    
    func testParser(){
        let myData = testConstants.jsonString.data(using: .utf8)!
        let jsonResponse = try! JSONSerialization.jsonObject(with: myData, options: .allowFragments) as! [[String: Any]]
        let myparsedResponse: [Flight] = Flight.flightParser(jsonData: jsonResponse)
        XCTAssert(myparsedResponse[0].flightId == "146", "Not the flight 146, its the \(myparsedResponse[0].flightId)")
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
