//
//  PinPadView.swift
//  Assembler
//
//  Created by LucasD on 13/08/2019.
//  Copyright © 2019 dlucasss. All rights reserved.
//

import UIKit

@IBDesignable
open class PinPadView: UIView, NibLoadable {
    
    //    MARK: - private vars
    @IBOutlet private var pins: [PinView]!
    @IBOutlet private var numberBtns: [NumberButton]!
    
    @IBOutlet private weak var leftAccesory: UIButton!
    @IBOutlet private weak var rightAccesory: UIButton!
    
    var pin = ""
    
    
    //    MARK: - public vars
    public weak var delegate: PinPadDelegate?
    
    public var primaryColor: UIColor = UIColor.gray {
        didSet{
//            leftAccesory.setTitleColor(primaryColor, for: .normal)
//            rightAccesory.setTitleColor(primaryColor, for: .normal)
            pins.forEach { (pinView) in
                pinView.primaryColor = primaryColor
            }
            numberBtns.forEach { (numberBtn) in
                numberBtn.primaryColor = self.primaryColor
            }
        }
    }
    
    
    //    MARK: - public api
    public func clear() {
        clearInput()
    }
    
    public func animateIncorrect(){
        clearInput()
        pins.forEach { (pinView) in
            pinView.shake()
        }
    }
    
    
    //    MARK: - private methods
    @IBAction func numberBtnAcion(_ sender: NumberButton) {
        if pin.count < 6 {
            pin += "\(sender.numberValue)"
            pins[pin.count-1].setFillment(value: true)
        }
        
        if pin.count >= 6{
            delegate?.pinPadView(pinPadView: self, didSelect: pin)
            clearInput()
        }
    }
    
    @IBAction func leftAccesoryAction(_ sender: Any) {
        clearInput()
    }
    
    
    @IBAction func rightAccesoryAction(_ sender: Any) {
        guard pin.count > 0 else {
            return
        }
        
        pins[pin.count-1].setFillment(value: false)
        let index = pin.index(pin.endIndex, offsetBy: -1)
        pin = String(pin[..<index])
    }
    
    private func clearInput(){
        pin = ""
        pins.forEach { (pinView) in
            pinView.setFillment(value: false)
        }
    }
    
}
