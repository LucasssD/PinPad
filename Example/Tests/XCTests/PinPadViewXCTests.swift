//
//  PinPadViewXCTests.swift
//  PinPad_Tests
//
//  Created by LucasD on 23/10/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import XCTest
@testable import PinPad

class PinPadViewXCTests: XCTestCase {
    
    var pinpadView: PinPadView!

    override func setUp() {
        pinpadView = PinPadView.init()
        pinpadView.setupFromNib()
        
    }

    override func tearDown() {
        pinpadView = nil
    }
    
    func testPrimaryColor() {
        pinpadView.primaryColor = UIColor.red
        XCTAssertEqual(pinpadView.primaryColor, UIColor.red)
    }
    
    func testPin() {
        pinpadView.clear()
        XCTAssertEqual(pinpadView.pin, "")
    }
    
    func testDelegate() {
        //todo
    }


    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    

}
