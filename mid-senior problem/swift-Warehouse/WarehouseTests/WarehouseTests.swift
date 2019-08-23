//
//  WarehouseTests.swift
//  WarehouseTests
//
//  Created by Mitchell Tenney on 8/20/19.
//  Copyright © 2019 Mitchell Tenney. All rights reserved.
//

import XCTest
@testable import Warehouse

class WarehouseTests: XCTestCase {

    var warehouse: Warehouse = Warehouse()
    
    func testFindOrigin() {
        let result: String = self.warehouse.find(x: 1, y: 1)
        XCTAssertEqual("1", result)
    }
    
    
    func testX4Y1() {
        let result: String = self.warehouse.find(x: 4, y: 1)
        XCTAssertEqual("10", result)
    }
    
    func testX5Y1() {
        let result: String = self.warehouse.find(x: 5, y: 1)
        XCTAssertEqual("15", result)
    }
    
    func testX2Y2() {
        let result: String = self.warehouse.find(x: 2, y: 2)
        XCTAssertEqual("5", result)
    }
    
    
    func testX4Y2() {
        let result: String = self.warehouse.find(x: 4, y: 2)
        XCTAssertEqual("14", result)
    }
    
    func testX5Y2() {
        let result: String = self.warehouse.find(x: 5, y: 2)
        XCTAssertEqual("20", result)
    }

    func testX2Y4() {
        let result: String = self.warehouse.find(x: 2, y: 4)
        XCTAssertEqual("12", result)
    }
    
    func testX3Y4() {
        let result: String = self.warehouse.find(x: 3, y: 4)
        XCTAssertEqual("18", result)
    }
    
    func testX1Y5() {
        let result: String = self.warehouse.find(x: 1, y: 5)
        XCTAssertEqual("11", result)
    }
    
    func testX6Y5() {
        let result: String = self.warehouse.find(x: 6, y: 5)
        XCTAssertEqual("51", result)
    }
    
    func testX100Y100() {
        let result: String = self.warehouse.find(x: 100, y: 100)
        XCTAssertEqual("19801", result)
    }
    
    func testFindGalaxyFarFarAway() {
        let result: String = self.warehouse.find(x: 100000, y: 100000)
        XCTAssertEqual("20000000001", result)
    }
}
