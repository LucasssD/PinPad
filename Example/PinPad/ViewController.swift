//
//  ViewController.swift
//  PinPad
//
//  Created by Łukasz Duda on 10/21/2019.
//  Copyright (c) 2019 Łukasz Duda. All rights reserved.
//

import UIKit
import PinPad

class ViewController: UIViewController {

    @IBOutlet weak var pinPadView: PinPadView!
    @IBOutlet weak var resultLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pinPadView.setupFromNib()
        pinPadView.primaryColor = UIColor.white;
        
        pinPadView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: PinPadDelegate {   
    
    func pinPadView(pinPadView: PinPadView, didSelect pin: String) {
        if pin == "123456" {
            resultLbl.text = "correct pin inserted \n(\(pin))"
        } else {
            resultLbl.text = "incorrect pin inserted \n(\(pin))"
            pinPadView.animateIncorrect()
        }
    }
    
}
