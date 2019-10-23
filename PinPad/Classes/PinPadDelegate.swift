//
//  PinPadDelegate.swift
//  Assembler
//
//  Created by LucasD on 14/08/2019.
//  Copyright © 2019 dlucasss. All rights reserved.
//

import Foundation

public protocol PinPadDelegate: class {
    
//    func didSelectPin(pin: String)
    func pinPadView(pinPadView: PinPadView, didSelect pin: String)
    
}
