//
//  NumberButtonTests.swift
//  PinPad_Tests
//
//  Created by LucasD on 23/10/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import XCTest
@testable import PinPad

class NumberButtonXCTests: XCTestCase {

    var numberButton: NumberButton!
    
    override func setUp() {
        numberButton = NumberButton.init()
    }

    override func tearDown() {
        numberButton = nil
    }

    func testPrimaryColor() {
        numberButton.primaryColor = UIColor.red
        XCTAssertEqual(numberButton.primaryColor, UIColor.red)
        XCTAssertEqual(numberButton.layer.borderColor, UIColor.red.cgColor)
    }
    
    func testNumber() {
        numberButton.numberValue = 1
        XCTAssertEqual(numberButton.numberValue, 1)
        XCTAssertEqual(numberButton.title(for: .normal), "1")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
