//
//  ToDoItemTests.swift
//  ToDoTests
//
//  Created by Rajat Bhatt on 02/01/20.
//  Copyright © 2020 Rajat. All rights reserved.
//

import XCTest
@testable import ToDo

class ToDoItemTests: XCTestCase {
    override func setUp() {
    }
    
    override class func tearDown() {
        
    }
    
    func test_Init_TakesTitle() {
        let item = ToDoItem(title: "Foo")
        XCTAssertEqual(item.title, "Foo",
                       "should set title")
    }
    
    func test_Init_WhenGivenDescription_SetsDescription() {
      let item = ToDoItem(title: "",
                          itemDescription: "Bar")
      XCTAssertEqual(item.itemDescription, "Bar",
                     "should set itemDescription")
    }
    
    func test_Init_SetsTimestamp() {
      let item = ToDoItem(title: "",
                          timestamp: 0.0)
      XCTAssertEqual(item.timestamp, 0.0,
                     "should set timestamp")
    }
    
    func test_Init_SetsLocation() {

      let location = Location(name: "Foo")
      let item = ToDoItem(title: "",
                          location: location)
     
      XCTAssertEqual(item.location?.name,
                     location.name,
                     "should set location")
    }
}
