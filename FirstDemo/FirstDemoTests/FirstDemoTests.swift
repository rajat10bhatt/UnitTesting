//
//  FirstDemoTests.swift
//  FirstDemoTests
//
//  Created by Rajat on 10/18/19.
//  Copyright © 2019 EaternEnterprise. All rights reserved.
//

import XCTest
@testable import FirstDemo

class FirstDemoTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testNoOfVovelsWhenPassedRajatReturnsTwo() {
        let viewController = ViewController()
        let string = "Rajat"
        let noOfVovels = viewController.numberOfVovels(in: string)
        XCTAssertEqual(noOfVovels, 2, "Should find 2 vovels in Rajat")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
