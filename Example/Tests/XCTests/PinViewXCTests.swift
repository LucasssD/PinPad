//
//  PinViewXCTests.swift
//  PinPad_Tests
//
//  Created by LucasD on 23/10/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import XCTest
@testable import PinPad

class PinViewXCTests: XCTestCase {
    
    var pinView: PinView!

    override func setUp() {
        pinView = PinView.init()
    }

    override func tearDown() {
        pinView = nil
    }

    func testPrimaryColor() {
        pinView.primaryColor = UIColor.green
        XCTAssertEqual(pinView.primaryColor, UIColor.green)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
