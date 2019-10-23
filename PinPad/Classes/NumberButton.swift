//
//  NumberButton.swift
//  Assembler
//
//  Created by LucasD on 13/08/2019.
//  Copyright © 2019 dlucasss. All rights reserved.
//

import UIKit

class NumberButton: UIButton {

    @IBInspectable
    var numberValue: Int = 0 {
        didSet {
            self.setTitle("\(numberValue)", for: .normal)
        }
    }
    
    var primaryColor = UIColor.gray {
        didSet{
            self.layer.borderColor = primaryColor.cgColor
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUI()
    }
    
    private func setupUI(){
        self.layer.borderWidth = 1.5
        self.layer.borderColor = primaryColor.cgColor
        
        self.addTarget(self, action: #selector(touchDown), for: UIControl.Event.touchDown)
        self.addTarget(self, action: #selector(touchEnd), for: [.touchDragExit, .touchCancel, .touchUpOutside, .touchUpInside])
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.bounds.size.height / 2.0
    }

    @objc func touchDown() {
        UIView.animate(withDuration: 0.1, animations: { [unowned self] in
            self.backgroundColor = self.primaryColor
        })
        
    }
    @objc func touchEnd() {
        UIView.animate(withDuration: 0.1, animations: { [unowned self] in
            self.backgroundColor = UIColor.clear
        })
    }
        
}
